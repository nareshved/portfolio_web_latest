import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkThemeProvider extends ChangeNotifier {
  bool _isDark = false;
  final String _isDarkKey = "isDarkMode";

  bool get themeValue {
    updateThemeValueOnStart();
    return _isDark;
  }

  set themeValue(bool value) {
    _isDark = value;

    updateThemeValueInPrefs(value);
    notifyListeners();
  }

  // set theme mode in shared preferences for theme mode auto

  updateThemeValueInPrefs(bool value) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool(_isDarkKey, value);
  }

  updateThemeValueOnStart() async {
    var prefs = await SharedPreferences.getInstance();
    var isDarkValue = prefs.getBool(_isDarkKey);

    if (isDarkValue != null) {
      _isDark = isDarkValue;
    } else {
      _isDark = false;
    }
    notifyListeners();
  }
}
