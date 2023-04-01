import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  //
  bool isDarkMode = false;
  bool isM3 = false;

  void updateTheme(bool isDarkMode) {
    this.isDarkMode = isDarkMode;
    notifyListeners();
  }

  void updateM3(bool isM3) {
    this.isM3 = isM3;
    notifyListeners();
  }
}
