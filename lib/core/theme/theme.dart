import 'package:chatbox_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:chatbox_app/core/theme/text_theme.dart';

class AppTheme {
  static ThemeData dark = ThemeData.dark().copyWith(
    textTheme: AppTextTheme.darkTextTheme,
    scaffoldBackgroundColor: AppColor.black,
  );
  static ThemeData light = ThemeData.light().copyWith(
    textTheme: AppTextTheme.lightTextTheme,
    scaffoldBackgroundColor: AppColor.white,
  );
}
