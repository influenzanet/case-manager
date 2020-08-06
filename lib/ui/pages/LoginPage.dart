import 'package:case_manager/logic/LoginManager.dart';
import 'package:case_manager/state/app/AppNotifier.dart';
import 'package:case_manager/ui/common/widgets/app-bars/UnauthAppBar.dart';
import 'package:case_manager/ui/common/widgets/buttons/PrimaryFlatButton.dart';
import 'package:case_manager/ui/common/widgets/footers/Footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 400),
        color: Colors.white,
        padding: EdgeInsets.all(42),
        child: Form(
          key: _formKey,
          child: AutofillGroup(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Container(height: 16),
                Consumer<AppNotifier>(
                  builder: (context, state) {
                    return CheckboxListTile(
                      title: Text("Remember Me"),
                      value: state.persistState,
                      onChanged: (value) {
                        state.persistState = value;
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                    );
                  },
                ),
                Container(height: 16),
                PrimaryFlatButton(
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
