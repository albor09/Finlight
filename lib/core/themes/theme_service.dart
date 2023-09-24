import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  ThemeMode themeMode;

  ThemeService(this.themeMode);

  switchTheme() {
    themeMode = themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.light;
    notifyListeners();
  }
}
