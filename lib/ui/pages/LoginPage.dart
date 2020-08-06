import 'package:case_manager/logic/LoginManager.dart';
import 'package:case_manager/ui/common/widgets/app-bars/UnauthAppBar.dart';
import 'package:case_manager/ui/common/widgets/buttons/MainActionButton.dart';
import 'package:case_manager/ui/common/widgets/footers/Footer.dart';
import 'package:flutter/material.dart';

import '../common/routes/AppRoutes.dart';
import '../common/widgets/scaffolds/ThemedScaffold.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();

  @override
  void dispose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }

  Widget _loginBox() {
    var theme = Theme.of(context);
    return Center(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(42),
        child: Container(
          constraints: BoxConstraints(maxWidth: 360),
          child: Form(
            key: _formKey,
            child: AutofillGroup(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Login", style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900)),
                  Container(height: 32),
                  Text("Email", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  Container(height: 8),
                  TextFormField(
                    controller: emailEditingController,
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.username],
                    // autofocus: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      border: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE6E15A), width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.zero,
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: theme.errorColor, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.zero,
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: theme.errorColor, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.zero,
                      ),
                      filled: true,
                      fillColor: Color(0xffEDEDED),
                    ),
                    validator: (value) {
                      return (value.isEmpty) ? "Please enter your Email address" : null;
                    },
                  ),
                  Container(height: 20),
                  Text("Password", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  Container(height: 8),
                  TextFormField(
                    controller: passwordEditingController,
                    keyboardType: TextInputType.visiblePassword,
                    autofillHints: [AutofillHints.password],
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      border: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE6E15A), width: 2, style: BorderStyle.solid),
                          borderRadius: BorderRadius.zero),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: theme.errorColor, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.zero,
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: theme.errorColor, width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.zero,
                      ),
                      filled: true,
                      fillColor: Color(0xffEDEDED),
                    ),
                    validator: (value) {
                      return (value.isEmpty) ? "Please enter your password" : null;
                    },
                  ),
                  Container(height: 42),
                  MainActionButton(
                    text: "Login",
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        if (await LoginManager.login(
                          context,
                          emailEditingController.text,
                          passwordEditingController.text,
                        )) {
                          Navigator.of(context).pushReplacementNamed(AppRoutes.home);
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ThemedScaffold.scrollable(
      context,
      appBar: UnauthAppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(),
          _loginBox(),
          Footer(),
        ],
      ),
    );
  }
}
