import 'package:case_manager/logic/LoginManager.dart';
import 'package:case_manager/ui/common/routes/AppRoutes.dart';
import 'package:case_manager/ui/common/widgets/pages/LoadingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RedirectPage extends StatefulWidget {
  @override
  _RedirectPageState createState() => _RedirectPageState();
}

class _RedirectPageState extends State<RedirectPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Modular.to.pushNamed(LoginManager.hasAccessToken() ? AppRoutes.home : AppRoutes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoadingPage();
  }
}
