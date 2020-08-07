import 'package:case_manager/logic/LoginManager.dart';
import 'package:case_manager/ui/common/widgets/buttons/MainActionButton.dart';
import 'package:case_manager/ui/common/widgets/cards/MainCard.dart';
import 'package:case_manager/ui/common/widgets/inputs/FormButton.dart';
import 'package:case_manager/ui/common/widgets/inputs/FormInput.dart';
import 'package:case_manager/ui/common/widgets/scaffolds/UnauthScaffold.dart';
import 'package:case_manager/ui/common/widgets/text/Headline.dart';
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

  @override
  Widget build(BuildContext context) {
    return UnauthScaffold(
      context,
      MainCard(
        child: Form(
          key: _formKey,
          child: AutofillGroup(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Headline("Login"),
                FormInput(
                  "Email",
                  TextFormField(
                    controller: emailEditingController,
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.username],
                    // autofocus: true,
                    validator: (value) {
                      return (value.isEmpty) ? "Please enter your email address" : null;
                    },
                  ),
                ),
                FormInput(
                  "Password",
                  TextFormField(
                    controller: passwordEditingController,
                    keyboardType: TextInputType.visiblePassword,
                    autofillHints: [AutofillHints.password],
                    obscureText: true,
                    validator: (value) {
                      return (value.isEmpty) ? "Please enter your password" : null;
                    },
                  ),
                ),
                FormButton(
                  child: MainActionButton(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
