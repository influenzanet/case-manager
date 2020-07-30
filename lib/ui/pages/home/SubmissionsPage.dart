import 'package:case_manager/api/Api.dart';
import 'package:case_manager/api/functions/StudyApi.dart';
import 'package:case_manager/generated/api/study_service/study-service.pb.dart';
import 'package:case_manager/generated/api/study_service/study.pb.dart';
import 'package:case_manager/logic/FileSaver.dart';
import 'package:case_manager/ui/common/widgets/buttons/PrimaryFlatButton.dart';
import 'package:case_manager/ui/common/widgets/scaffolds/DrawerScaffold.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class SubmissionsPage extends StatefulWidget {
  @override
  _SubmissionsPageState createState() => _SubmissionsPageState();
}

class _SubmissionsPageState extends State<SubmissionsPage> {
  static const String ALL_SURVEYS_KEY = "All-Surveys";

  final _studies = new List<Study>();
  final _studyResponseCounts = new Map<String, Int64>();
  String _selectedStudyKey = "";
  String _selectedSurveyKey = "";

  DateTime startDate = DateTime(2019);
  DateTime endDate = DateTime.now().add(Duration(days: 1));

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
    await Api.callWithoutParameter(
      StudyApi.getAllStudies,
      onSuccess: (response) {
        var studyResponse = Studies()..mergeFromProto3Json(response.data);

        setState(() {
          _studies.clear();
          _studies.addAll(studyResponse.studies);
          _studyResponseCounts.clear();
          _selectedSurveyKey = _selectableSurveyKeys[0];
          _selectedStudyKey = _studies != null && _studies.isNotEmpty ? _studies[0].key : "";
        });

        _fetchResponseStatistics();
      },
    );
  }

  void _fetchResponseStatistics() async {
    if (_selectedStudyKey == null) return;

    var query = SurveyResponseQuery()
      ..studyKey = _selectedStudyKey
      ..from = Int64(startDate.millisecondsSinceEpoch)
      ..until = Int64(endDate.millisecondsSinceEpoch);

    await Api.callWithParameter<SurveyResponseQuery>(
      StudyApi.getResponseStatistics,
      query,
      onSuccess: (response) {
        var statisticsResponse = StudyResponseStatistics()..mergeFromProto3Json(response.data);

        print(statisticsResponse);

        setState(() {
          _studyResponseCounts.clear();
          _studyResponseCounts.addAll(statisticsResponse.surveyResponseCounts);
          _selectedSurveyKey = _selectableSurveyKeys[0];
        });
      },
    );
  }

  void _downloadResponses() async {
    var query = SurveyResponseQuery()
      ..studyKey = _selectedStudyKey
      ..from = Int64(startDate.millisecondsSinceEpoch)
      ..until = Int64(endDate.millisecondsSinceEpoch);
    if (_selectedSurveyKey != ALL_SURVEYS_KEY) {
      query.surveyKey = _selectedSurveyKey;
    }

    await Api.callWithParameter<SurveyResponseQuery>(
      StudyApi.getSurveyResponses,
      query,
      onSuccess: (response) {
        FileSaver.saveTextFile(
            "Responses_${_selectedStudyKey}_${_selectedSurveyKey}_${startDate.millisecondsSinceEpoch}_${endDate.millisecondsSinceEpoch}.json",
            json.encode(response.data));
      },
    );
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

  Widget _datePicker(
    BuildContext context,
    String label,
    DateTime initialDate,
    DateTime firstDate,
    DateTime lastDate,
    Function(DateTime) onNewDate,
  ) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.textTheme.caption),
        Container(height: 4),
        OutlineButton(
          padding: EdgeInsets.all(24),
          child: Text(
            DateFormat(DateFormat.YEAR_NUM_MONTH_DAY).format(initialDate),
            style: theme.textTheme.subtitle1,
          ),
          onPressed: () async {
            var newDate = await showDatePicker(
              context: context,
              initialDate: initialDate,
              firstDate: firstDate,
              lastDate: lastDate,
              fieldHintText: label,
              fieldLabelText: label,
              helpText: label,
              locale: Locale(Intl.shortLocale(Intl.getCurrentLocale())),
            );

            if (newDate != null) {
              onNewDate(newDate);
            }
          },
          borderSide: BorderSide(color: theme.textTheme.caption.color),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DrawerScaffold(
      "Submissions",
      Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(height: 20),
            if (_studies.length > 0)
              DropdownButtonFormField(
                value: _selectedStudyKey,
                items: _studies
                    .map<DropdownMenuItem<String>>(
                        (Study study) => DropdownMenuItem<String>(value: study.key, child: Text(study.key)))
                    .toList(),
                onChanged: (String newStudyKey) => {
                  setState(() {
                    _selectedStudyKey = newStudyKey;
                    _fetchResponseStatistics();
                  })
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Study",
                ),
              ),
            Container(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _datePicker(
                  context,
                  "Start Date",
                  startDate,
                  DateTime(2019),
                  endDate,
                  (newDate) {
                    setState(() {
                      startDate = newDate;
                      _fetchResponseStatistics();
                    });
                  },
                ),
                _datePicker(
                    context,
                    "End Date",
                    endDate,
                    startDate,
                    DateTime.now().add(Duration(days: 1)),
                    (newDate) => setState(() {
                          endDate = newDate;
                          _fetchResponseStatistics();
                        })),
              ],
            ),
            Container(height: 20),
            (_studyResponseCounts.isNotEmpty)
                ? Column(
                    children: [
                      DropdownButtonFormField(
                        value: _selectedSurveyKey,
                        items: _selectableSurveyKeys
                            .map<DropdownMenuItem<String>>((String survey) => DropdownMenuItem<String>(
                                value: survey, child: Text(survey == ALL_SURVEYS_KEY ? "All Surveys" : survey)))
                            .toList(),
                        onChanged: (String newSurveyKey) => {
                          setState(() {
                            _selectedSurveyKey = newSurveyKey;
                          })
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Survey",
                        ),
                      ),
                      Container(height: 20),
                      Text(
                        _getCurrentResponseCount().toString(),
                        style: theme.textTheme.headline5,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Responses in Selected Timeframe",
                        style: theme.textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                      Container(height: 10),
                      PrimaryFlatButton(
                        text: "Download Responses",
                        onPressed: _downloadResponses,
                      ),
                    ],
                  )
                : Text("No Responses found", textAlign: TextAlign.center, style: theme.textTheme.headline6),
          ],
        ),
      ),
    );
  }
}
