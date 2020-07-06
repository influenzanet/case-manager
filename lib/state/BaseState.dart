import 'package:flutter/material.dart';

// Derive all states from BaseState so features related to persisting state can be more easily added.
abstract class BaseState extends ChangeNotifier {
  update() {
    notifyListeners();
  }
}
