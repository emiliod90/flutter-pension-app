import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;
  setTheme(ThemeData theme) {
    _themeData = theme;

    notifyListeners();
  }
}

ThemeData light = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.indigo,
  accentColor: Colors.redAccent,
  scaffoldBackgroundColor: Color(0xfff1f1f1),
  primaryColor: Color(0xff303030),
);

ThemeData dark = ThemeData(
  brightness: Brightness.dark,
  //primarySwatch: Colors.purple,
  //accentColor: Colors.blueAccent,
  //scaffoldBackgroundColor: Color(0xfff1f1f1),
  //primaryColor: Color(0xfff1f1f1),
);

ThemeData cool = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.lightBlue,
  accentColor: Colors.blueAccent,
  scaffoldBackgroundColor: Colors.indigo,
  primaryColor: Colors.lightBlue,
);
