import 'package:case_manager/api/Api.dart';
import 'package:case_manager/ui/common/widgets/scaffolds/DrawerScaffold.dart';
import 'package:flutter/material.dart';

class SubmissionsPage extends StatefulWidget {
  @override
  _SubmissionsPageState createState() => _SubmissionsPageState();
}

class _SubmissionsPageState extends State<SubmissionsPage> {
  final _studies = new List<String>();
  String _selectedStudy = "";

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() async {
    try {
      var response = await Api.getAllStudies();
      if (response == null) return;

      setState(() {
        _studies.clear();
        _studies.addAll((response.data["studies"] as List<dynamic>).map((study) => study["key"]));
        _selectedStudy = _studies != null ? _studies[0] : "";
      });
    } catch (e) {
      print(e);
    }
  }

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
                  value: _selectedStudy,
                  items: _studies
                      .map<DropdownMenuItem<String>>(
                          (String study) => DropdownMenuItem<String>(value: study, child: Text(study)))
                      .toList(),
                  onChanged: (String newStudy) => {
                    setState(() {
                      _selectedStudy = newStudy;
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
