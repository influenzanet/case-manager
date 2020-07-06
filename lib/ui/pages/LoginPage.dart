import 'package:flutter/material.dart';

import 'common/routes/AppRoutes.dart';
import 'common/widgets/scaffolds/ThemedScaffold.dart';

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
    final theme = Theme.of(context);
    return ThemedScaffold.scrollable(
      context,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            color: theme.primaryColor,
            child: Center(
              child: Text(
                "CASE Manager",
                textAlign: TextAlign.center,
                style: theme.primaryTextTheme.headline3,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Center(
              child: Container(
                width: 400,
                child: Form(
                  key: _formKey,
                  child: AutofillGroup(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: emailEditingController,
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: [AutofillHints.username],
                          autofocus: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "E-Mail",
                          ),
                          validator: (value) {
                            return (value.isEmpty) ? "Please enter your E-Mail address" : null;
                          },
                        ),
                        Container(height: 32),
                        TextFormField(
                          controller: passwordEditingController,
                          keyboardType: TextInputType.visiblePassword,
                          autofillHints: [AutofillHints.password],
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Password",
                          ),
                          validator: (value) {
                            return (value.isEmpty) ? "Please enter your password" : null;
                          },
                        ),
                        Container(height: 32),
                        FlatButton(
                          onPressed: () {
                            print(emailEditingController.text);
                            print(passwordEditingController.text);

                            if (_formKey.currentState.validate()) {
                              Navigator.of(context).pushNamed(AppRoutes.submissions);
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Login", style: theme.primaryTextTheme.button),
                          ),
                          color: theme.primaryColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            color: theme.bottomAppBarColor,
          ),
        ],
      ),
    );
  }
}
