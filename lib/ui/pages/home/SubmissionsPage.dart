import 'package:case_manager/api/Api.dart';
import 'package:case_manager/generated/api/study_service/study-service.pb.dart';
import 'package:case_manager/generated/api/study_service/study.pb.dart';
import 'package:case_manager/ui/common/widgets/scaffolds/DrawerScaffold.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:html' as html;

class SubmissionsPage extends StatefulWidget {
  @override
  _SubmissionsPageState createState() => _SubmissionsPageState();
}

class _SubmissionsPageState extends State<SubmissionsPage> {
  static const String ALL_SURVEYS_KEY = "All_Surveys";

  final _studies = new List<Study>();
  final _studyResponseCounts = new Map<String, Int64>();
  String _selectedStudyKey = "";
  String _selectedSurveyKey = "";

  List<String> get _selectableSurveyKeys {
    var keys = new List<String>();
    keys.add(ALL_SURVEYS_KEY);
    keys.addAll(_studyResponseCounts.keys);
    return keys;
  }

  @override
  void initState() {
    super.initState();
    _fetchStudies();
  }

  void _fetchStudies() async {
    try {
      var response = await Api.getAllStudies();
      if (response.statusCode != 200) return;
      var studyResponse = Studies()..mergeFromProto3Json(response.data);

      setState(() {
        _studies.clear();
        _studies.addAll(studyResponse.studies);
        _studyResponseCounts.clear();
        _selectedSurveyKey = _selectableSurveyKeys[0];
        _selectedStudyKey = _studies != null && _studies.isNotEmpty ? _studies[0].key : "";
      });

      if (_selectedStudyKey != null) _fetchResponseStatistics(_selectedStudyKey);
    } catch (e) {
      print(e);
    }
  }

  void _fetchResponseStatistics(String studyKey) async {
    try {
      var response = await Api.getResponseStatistics(studyKey);
      if (response.statusCode != 200) return;
      var statisticsResponse = StudyResponseStatistics()..mergeFromProto3Json(response.data);

      setState(() {
        _studyResponseCounts.clear();
        _studyResponseCounts.addAll(statisticsResponse.surveyResponseCounts);
        _selectedSurveyKey = _selectableSurveyKeys[0];
      });
    } catch (e) {
      print(e);
    }
  }

  void _downloadResponses() async {
    try {
      String surveyKey = _selectedSurveyKey == ALL_SURVEYS_KEY ? null : _selectedSurveyKey;
      var response = await Api.getSurveyResponses(_selectedStudyKey, surveyKey: surveyKey);
      if (response.statusCode != 200) return;

      // prepare
      final bytes = utf8.encode(json.encode(response.data));
      final blob = html.Blob([bytes]);
      final url = html.Url.createObjectUrlFromBlob(blob);
      final anchor = html.document.createElement('a') as html.AnchorElement
        ..href = url
        ..style.display = 'none'
        ..download = 'responses.json';
      html.document.body.children.add(anchor);
      // download
      anchor.click();
      // cleanup
      html.document.body.children.remove(anchor);
      html.Url.revokeObjectUrl(url);
    } catch (e) {
      print(e);
    }
  }

  Int64 _getCurrentResponseCount() {
    if (_selectedSurveyKey == ALL_SURVEYS_KEY) {
      return _studyResponseCounts.values.fold(Int64(0), (prev, element) => prev + element);
    } else if (_selectedSurveyKey == "") {
      return Int64(0);
    } else {
      return _studyResponseCounts[_selectedSurveyKey];
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DrawerScaffold(
      "Submissions",
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (_studies.length > 0)
                DropdownButton(
                  value: _selectedStudyKey,
                  items: _studies
                      .map<DropdownMenuItem<String>>(
                          (Study study) => DropdownMenuItem<String>(value: study.key, child: Text(study.key)))
                      .toList(),
                  onChanged: (String newStudyKey) => {
                    setState(() {
                      _selectedStudyKey = newStudyKey;
                      _fetchResponseStatistics(_selectedStudyKey);
                    })
                  },
                ),
              if (_studyResponseCounts.isNotEmpty)
                DropdownButton(
                  value: _selectedSurveyKey,
                  items: _selectableSurveyKeys
                      .map<DropdownMenuItem<String>>(
                          (String survey) => DropdownMenuItem<String>(value: survey, child: Text(survey)))
                      .toList(),
                  onChanged: (String newSurveyKey) => {
                    setState(() {
                      _selectedSurveyKey = newSurveyKey;
                    })
                  },
                ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _getCurrentResponseCount().toString(),
                    style: theme.textTheme.headline5,
                  ),
                  Text(
                    "Responses in Selected Timeframe",
                    style: theme.textTheme.subtitle1,
                  ),
                  FlatButton(
                    child: Text("Download Responses"),
                    onPressed: _downloadResponses,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
