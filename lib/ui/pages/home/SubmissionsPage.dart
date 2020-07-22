import 'package:case_manager/api/Api.dart';
import 'package:case_manager/generated/api/study_service/study-service.pb.dart';
import 'package:case_manager/generated/api/study_service/study.pb.dart';
import 'package:case_manager/ui/common/widgets/scaffolds/DrawerScaffold.dart';
import 'package:flutter/material.dart';

class SubmissionsPage extends StatefulWidget {
  @override
  _SubmissionsPageState createState() => _SubmissionsPageState();
}

class _SubmissionsPageState extends State<SubmissionsPage> {
  final _studies = new List<Study>();
  String _selectedStudyKey = "";

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
        _selectedStudyKey = _studies != null ? _studies[0].key : "";
      });
    } catch (e) {
      print(e);
    }
  }

  void fetchResponseStatistics() async {}

  @override
  Widget build(BuildContext context) {
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
                    })
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }
}
