import 'package:flutter/material.dart';

import 'app_font_weight.dart';

//extension for font weights

class AppTextStyle {
  /// Display Large Text Style
  static const TextStyle displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: AppFontWeight.regular,
    height: 64 / 57,
  );

  /// Display Medium Text Style
  static const TextStyle displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: AppFontWeight.regular,
    height: 52 / 45,
  );

  /// Display Small Text Style
  static const TextStyle displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: AppFontWeight.bold,
    height: 44 / 36,
  );

  /// Headline Large Text Style
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: AppFontWeight.bold,
    height: 40 / 32,
  );

  /// Headline Medium Text Style
  static const TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: AppFontWeight.semiBold,
    height: 36 / 28,
  );

  /// Headline Small Text Style
  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    height: 32 / 24,
  );

  /// Title Large Text Style
  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    height: 28 / 22,
  );

  /// Title Medium Text Style
  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0.15,
  );

  /// Title Small Text Style (the default)
  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.1,
  );

  /// Label Large Text Style
  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.1,
  );

  ///  Label Medium Text Style
  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    height: 16 / 12,
    letterSpacing: 0.15,
  );

  /// label Small Text Style
  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    height: 16/11,
    letterSpacing: 0.5,
  );

  /// Body Large Text Style
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    height: 24/16,
    letterSpacing: 0.15,
  );

  /// Body Medium Text Style
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    height: 20/14,
    letterSpacing: 0.1,
  );

  /// Body Small Text Style
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    height:16/12,
    letterSpacing: 0.4,
  );
}
