import 'package:chatbox_app/screen/splash.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Map<String, WidgetBuilder> route = {
    "splash": (BuildContext context) => Splash(),
  };
}
