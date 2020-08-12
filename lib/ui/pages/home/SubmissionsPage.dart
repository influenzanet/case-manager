import 'package:case_manager/api/Api.dart';
import 'package:case_manager/api/functions/StudyApi.dart';
import 'package:case_manager/generated/api/study_service/study-service.pb.dart';
import 'package:case_manager/generated/api/study_service/study.pb.dart';
import 'package:case_manager/logic/FileSaver.dart';
import 'package:case_manager/ui/common/widgets/buttons/MainActionButton.dart';
import 'package:case_manager/ui/common/widgets/cards/MainCard.dart';
import 'package:case_manager/ui/common/widgets/inputs/FormInput.dart';
import 'package:case_manager/ui/common/widgets/layout/Spacing.dart';
import 'package:case_manager/ui/common/widgets/scaffolds/AuthScaffold.dart';
import 'package:case_manager/ui/common/widgets/text/Headline.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
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

  DateTime _startDate = DateTime(2019);
  DateTime _endDate = DateTime.now().add(Duration(days: 1));

  List<String> get _selectableSurveyKeys {
    var keys = new List<String>();
    if (_studyResponseCounts.keys.length != 1) keys.add(ALL_SURVEYS_KEY);
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
      context,
      StudyApi.getAllStudies,
      onSuccess: (response) {
        var studyResponse = Studies()..mergeFromProto3Json(response.data);

        setState(() {
          _studies.clear();
          _studies.addAll(studyResponse.studies);
          _studyResponseCounts.clear();
          _selectedSurveyKey = _selectableSurveyKeys[0];
          _selectedStudyKey = _studies != null && _studies.isNotEmpty ? _studies[0].key : "";
          _onStudySelected();
        });
      },
    );
  }

  void _onStudySelected() {
    _startDate = _getDefaultStartDate();
    _endDate = _getDefaultEndDate();
    _fetchResponseStatistics();
  }

  void _fetchResponseStatistics() async {
    if (_selectedStudyKey == null) return;

    var query = SurveyResponseQuery()
      ..studyKey = _selectedStudyKey
      ..from = Int64(_startDate.millisecondsSinceEpoch)
      ..until = Int64(_endDate.millisecondsSinceEpoch);

    await Api.callWithParameter<SurveyResponseQuery>(
      context,
      StudyApi.getResponseStatistics,
      query,
      onSuccess: (response) {
        var statisticsResponse = StudyResponseStatistics()..mergeFromProto3Json(response.data);

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
      ..from = Int64(_startDate.millisecondsSinceEpoch)
      ..until = Int64(_endDate.millisecondsSinceEpoch);
    if (_selectedSurveyKey != ALL_SURVEYS_KEY) {
      query.surveyKey = _selectedSurveyKey;
    }

    await Api.callWithParameter<SurveyResponseQuery>(
      context,
      StudyApi.getSurveyResponses,
      query,
      onSuccess: (response) {
        FileSaver.saveTextFile(
            "Responses_${_selectedStudyKey}_${_selectedSurveyKey}_${_startDate.millisecondsSinceEpoch}_${_endDate.millisecondsSinceEpoch}.json",
            json.encode(response.data));
      },
    );
  }

  DateTime _getDefaultStartDate() {
    DateTime startDate;
    if (_studies != null && _studies.isNotEmpty) {
      int startTimestamp = _studies.firstWhere((study) => study.key == _selectedStudyKey)?.props?.startDate?.toInt();
      if (startTimestamp != null && startTimestamp != 0) {
        startDate = DateTime.fromMillisecondsSinceEpoch(startTimestamp * 1000);
      }
    }

    if (startDate == null) {
      startDate = DateTime(2019);
    }

    return startDate;
  }

  DateTime _getDefaultEndDate() {
    DateTime endDate = _getStudyEndDate();

    if (endDate == null) {
      endDate = _getTomorrow();
    }

    if (!endDate.isAfter(_startDate)) {
      endDate = _getDayAfterStart();
    }

    return endDate;
  }

  DateTime _getLastEndDate() {
    DateTime lastEndDate = _getTomorrow();
    DateTime studyEndDate = _getStudyEndDate();

    if (studyEndDate != null && !lastEndDate.isAfter(studyEndDate)) {
      lastEndDate = studyEndDate;
    }

    if (!lastEndDate.isAfter(_startDate)) {
      lastEndDate = _getDayAfterStart();
    }

    return lastEndDate;
  }

  DateTime _getStudyEndDate() {
    if (_studies != null && _studies.isNotEmpty) {
      int endTimestamp = _studies.firstWhere((study) => study.key == _selectedStudyKey)?.props?.endDate?.toInt();
      if (endTimestamp != null && endTimestamp != 0) {
        return DateTime.fromMillisecondsSinceEpoch(endTimestamp * 1000);
      }
    }
    return null;
  }

  DateTime _getTomorrow() {
    return DateTime.now().add(Duration(days: 1));
  }

  DateTime _getDayAfterStart() {
    return _startDate.add(Duration(days: 1));
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
    DateTime initialDate,
    DateTime firstDate,
    DateTime lastDate,
    Function(DateTime) onNewDate,
  ) {
    var theme = Theme.of(context);
    return SizedBox(
      width: (AppTheme.cardWidth - AppTheme.spacing) / 2,
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        color: theme.inputDecorationTheme.fillColor,
        child: Row(
          children: [
            Text(
              DateFormat.yMd(Intl.getCurrentLocale()).format(initialDate),
              style: theme.textTheme.subtitle1,
              textAlign: TextAlign.start,
            ),
            Spacer(),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.grey.shade700,
            ),
          ],
        ),
        onPressed: () async {
          var newDate = await showDatePicker(
            context: context,
            initialDate: initialDate,
            firstDate: firstDate,
            lastDate: lastDate,
            locale: Locale(Intl.shortLocale(Intl.getCurrentLocale())),
          );

          if (newDate != null) {
            onNewDate(newDate);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      context,
      MainCard(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Headline("Submissions"),
          FormInput(
            "Study",
            DropdownButtonFormField(
              value: _selectedStudyKey,
              items: _studies
                  .map<DropdownMenuItem<String>>(
                      (Study study) => DropdownMenuItem<String>(value: study.key, child: Text(study.key)))
                  .toList(),
              onChanged: (String newStudyKey) => {
                setState(() {
                  _selectedStudyKey = newStudyKey;
                  _onStudySelected();
                })
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: FormInput(
                  "Start Date",
                  _datePicker(
                    context,
                    _startDate,
                    DateTime(2019),
                    _endDate.subtract(Duration(days: 1)),
                    (newDate) {
                      setState(() {
                        _startDate = newDate;
                        _fetchResponseStatistics();
                      });
                    },
                  ),
                ),
              ),
              Spacing.responsive(context),
              Expanded(
                child: FormInput(
                  "End Date",
                  _datePicker(
                      context,
                      _endDate,
                      _startDate.add(Duration(days: 1)),
                      _getLastEndDate(),
                      (newDate) => setState(() {
                            _endDate = newDate;
                            _fetchResponseStatistics();
                          })),
                ),
              ),
            ],
          ),
          FormInput(
            "Survey",
            _studies.isNotEmpty
                ? DropdownButtonFormField(
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
                  )
                : DropdownButtonFormField(
                    items: [],
                    onChanged: null,
                  ),
          ),
          Spacing(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(_getCurrentResponseCount().toString(),
                      style: TextStyle(color: Color(0xffA5A5A5), fontSize: 16, fontWeight: FontWeight.w700)),
                  Text(
                    " Submissions Selected",
                    style: TextStyle(color: Color(0xffA5A5A5), fontSize: 16),
                  ),
                ],
              ),
              Spacing.label(),
              MainActionButton(
                text: "Download",
                onPressed: _getCurrentResponseCount() > 0 ? _downloadResponses : null,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
