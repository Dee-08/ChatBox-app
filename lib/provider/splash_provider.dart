import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  init(context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushNamed(context, "onboarding");
    });
  }
}
