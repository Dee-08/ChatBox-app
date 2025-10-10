import 'package:flutter/material.dart';

extension ThemeExtensions on BuildContext {
  bool get isDark => Theme.of(this).brightness == Brightness.dark;
  bool get isLight => Theme.of(this).brightness == Brightness.light;

  TextTheme get textTheme => Theme.of(this).textTheme;
  Size get screenSize => MediaQuery.sizeOf(this);
}
