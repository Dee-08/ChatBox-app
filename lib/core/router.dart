import 'package:chatbox_app/screen/login.dart';
import 'package:chatbox_app/screen/onboarding.dart';
import 'package:chatbox_app/screen/splash.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Map<String, WidgetBuilder> route = {
    "splash": (BuildContext context) => Splash(),
    "onboarding": (BuildContext context) => Onboarding(),
    "login": (BuildContext context) => LoginPage(),
  };
}
