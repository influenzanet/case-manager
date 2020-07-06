import 'package:case_manager/ui/common/widgets/scaffolds/DrawerScaffold.dart';
import 'package:flutter/material.dart';

class SubmissionsPage extends StatefulWidget {
  @override
  _SubmissionsPageState createState() => _SubmissionsPageState();
}

class _SubmissionsPageState extends State<SubmissionsPage> {
  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Submissions",
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
