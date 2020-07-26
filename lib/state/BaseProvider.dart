import 'package:flutter/material.dart';

abstract class BaseProvider extends ChangeNotifier {
  update() {
    notifyListeners();
    save();
  }

  save();
}
