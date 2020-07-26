import 'package:case_manager/logic/LoginManager.dart';
import 'package:case_manager/ui/pages/home/RedirectPage.dart';
import 'package:flutter/material.dart';

authGuard(Widget page) {
  return LoginManager.hasAccessToken() ? page : RedirectPage();
}
