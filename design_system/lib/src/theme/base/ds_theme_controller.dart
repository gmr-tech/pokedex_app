// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

import 'ds_theme.dart';

class DSThemeController extends ChangeNotifier {
  DSThemeController({required DSThemeMode initialMode}) {
    dsThemeMode = initialMode;
  }

  DSThemeMode get dsThemeMode => _dsThemeMode;
  ThemeMode get themeMode => _themeMode;
  ThemeData get themeData => _themeData;

  DSThemeMode _dsThemeMode = DSThemeMode.dark;
  ThemeMode _themeMode = ThemeMode.dark;
  ThemeData _themeData = DSTheme.darkThemeData;

  /// Sets DSThemeMode and updates Flutter ThemeData and ThemeMode.
  set dsThemeMode(DSThemeMode newMode) {
    _dsThemeMode = newMode;
    _toggleThemeData(newMode);
    _toggleThemeMode(newMode);
    notifyListeners();
  }

  void _toggleThemeMode(DSThemeMode newMode) {
    switch (newMode) {
      case DSThemeMode.light:
        _themeMode = ThemeMode.light;
        break;
      case DSThemeMode.dark:
        _themeMode = ThemeMode.dark;
        break;
    }
  }

  void _toggleThemeData(DSThemeMode newMode) {
    switch (newMode) {
      case DSThemeMode.light:
        _themeData = DSTheme.lightThemeData;
        break;
      case DSThemeMode.dark:
        _themeData = DSTheme.darkThemeData;
        break;
    }
  }
}

enum DSThemeMode {
  light,
  dark,
}
