import 'package:flutter/material.dart';

abstract class BaseNotifier extends ChangeNotifier {
  update() {
    notifyListeners();
    save();
  }

  save();

  reset();
}
