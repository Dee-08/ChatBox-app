import 'package:chatbox_app/core/databases/secure_storage.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode? _themeMode;
  ThemeMode? get themeMode => _themeMode;

  ThemeProvider() {
    initialFun();
  }

  initialFun() async {
    var themeStatus = await SecureStorage.getStoreThemeMode();

    if (themeStatus == "true") {
      _themeMode = ThemeMode.dark;
      notifyListeners();
    } else if (themeStatus == "false") {
      _themeMode = ThemeMode.light;
      notifyListeners();
    } else {
      _themeMode = ThemeMode.system;
      notifyListeners();
    }

    _themeMode = ThemeMode.light;
    notifyListeners();
  }

  changeMode(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();

    SecureStorage.storeThemeMode(isDark.toString());
  }
}
