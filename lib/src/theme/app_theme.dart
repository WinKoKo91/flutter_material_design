import 'package:flutter/material.dart';
import 'package:flutter_material_design/src/shaps/button_theme.dart';

import '../colors/color_schemes.dart';
import 'app_text_theme.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      colorScheme: lightColorScheme,
      textTheme: appTextTheme,
      elevatedButtonTheme: lightElevatedButtonTheme,
      fontFamily: "Roboto");

  static final ThemeData darkTheme = ThemeData(
      colorScheme: darkColorScheme,
      textTheme: appTextTheme,
      elevatedButtonTheme: darkElevatedButtonTheme,
      fontFamily: 'ZCOOL');
}
