import 'package:flutter/material.dart';
import 'package:chatbox_app/core/constant/constant.dart';

class AppTextTheme {
  static final lightTextTheme = TextTheme(
    titleSmall: TextStyle(
      fontFamily: FontFamily.caros,
      fontSize: 16,
      color: AppColor.black,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamily.caros,
      fontSize: 18,
      color: AppColor.black,
    ),
    titleLarge: TextStyle(
      fontFamily: FontFamily.caros,
      fontSize: 24,
      color: AppColor.black,
    ),
    bodySmall: TextStyle(
      fontFamily: FontFamily.circular,
      fontSize: 16,
      color: AppColor.black,
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.circular,
      fontSize: 18,
      color: AppColor.black,
    ),
    bodyLarge: TextStyle(
      fontFamily: FontFamily.circular,
      fontSize: 24,
      color: AppColor.black,
    ),
  );

  static final darkTextTheme = TextTheme(
    titleSmall: TextStyle(
      fontFamily: FontFamily.caros,
      fontSize: 16,
      color: AppColor.white,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamily.caros,
      fontSize: 18,
      color: AppColor.white,
    ),
    titleLarge: TextStyle(
      fontFamily: FontFamily.caros,
      fontSize: 24,
      color: AppColor.white,
    ),
    bodySmall: TextStyle(
      fontFamily: FontFamily.circular,
      fontSize: 16,
      color: AppColor.white,
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.circular,
      fontSize: 18,
      color: AppColor.white,
    ),
    bodyLarge: TextStyle(
      fontFamily: FontFamily.circular,
      fontSize: 24,
      color: AppColor.white,
    ),
  );
}
