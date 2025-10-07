import 'package:chatbox_app/core/constant/font_family.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final textTheme = TextTheme(
    titleSmall: TextStyle(fontFamily: FontFamily.caros, fontSize: 16),
    titleMedium: TextStyle(fontFamily: FontFamily.caros, fontSize: 20),
    titleLarge: TextStyle(fontFamily: FontFamily.caros, fontSize: 24),
    bodySmall: TextStyle(fontFamily: FontFamily.circular, fontSize: 216),
    bodyMedium: TextStyle(fontFamily: FontFamily.circular, fontSize: 20),
    bodyLarge: TextStyle(fontFamily: FontFamily.circular, fontSize: 24),
  );
  static ThemeData dark = ThemeData.dark().copyWith(textTheme: textTheme);
  static ThemeData light = ThemeData.light().copyWith(textTheme: textTheme);
}
