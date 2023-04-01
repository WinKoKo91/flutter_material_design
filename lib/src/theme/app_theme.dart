import 'package:flutter/material.dart';
import 'package:flutter_material_design/src/shaps/button_theme.dart';

import '../colors/color_schemes.dart';
import 'app_text_theme.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      textTheme: appTextTheme,
      fontFamily: "Roboto");

  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      textTheme: appTextTheme,
      fontFamily: 'ZCOOL');
}
