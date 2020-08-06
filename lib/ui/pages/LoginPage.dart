import 'package:case_manager/logic/LoginManager.dart';
import 'package:case_manager/ui/common/widgets/buttons/MainActionButton.dart';
import 'package:case_manager/ui/common/widgets/layout/Spacing.dart';
import 'package:case_manager/ui/common/widgets/scaffolds/UnauthScaffold.dart';
import 'package:case_manager/ui/common/widgets/text/FormLabel.dart';
import 'package:case_manager/ui/common/widgets/text/Headline.dart';
import 'package:case_manager/ui/theme/AppTheme.dart';
import 'package:flutter/material.dart';

import '../common/routes/AppRoutes.dart';

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
        padding: EdgeInsets.all(AppTheme.spacing),
        child: Container(
          constraints: BoxConstraints(maxWidth: AppTheme.formWidth),
          child: Form(
            key: _formKey,
            child: AutofillGroup(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Headline("Login"),
                  FormLabel("Email"),
                  TextFormField(
                    controller: emailEditingController,
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.username],
                    // autofocus: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      border: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffE6E15A), width: AppTheme.borderWidth, style: BorderStyle.solid),
                        borderRadius: BorderRadius.zero,
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: theme.errorColor, width: AppTheme.borderWidth, style: BorderStyle.solid),
                        borderRadius: BorderRadius.zero,
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: theme.errorColor, width: AppTheme.borderWidth, style: BorderStyle.solid),
                        borderRadius: BorderRadius.zero,
                      ),
                      filled: true,
                      fillColor: Color(0xffEDEDED),
                    ),
                    validator: (value) {
                      return (value.isEmpty) ? "Please enter your email address" : null;
                    },
                  ),
                  Spacing.formElement(),
                  FormLabel("Password"),
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
                  Spacing(),
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
    return UnauthScaffold(
      _loginBox(),
    );
  }
}
