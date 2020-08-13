import 'package:flutter/cupertino.dart';
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
  /*primarySwatch: Colors.indigo,
  accentColor: Colors.redAccent,
  scaffoldBackgroundColor: Color(0xfff1f1f1),
  primaryColor: Color(0xff303030),
  secondaryHeaderColor: Color(0xff96e4da),*/
  /*colorScheme: ColorScheme(
    primary: Color(0xffff7882),
    primaryVariant: Color(0xffc4a0dc),
    secondary: Color(0xffc8dcfa),
    secondaryVariant: Color(0xff96e4da),
  )*/
);

ThemeData dark = ThemeData(
  brightness: Brightness.dark,
  //primarySwatch: Colors.purple,
  //accentColor: Colors.blueAccent,
  //scaffoldBackgroundColor: Color(0xfff1f1f1),
  //primaryColor: Color(0xfff1f1f1),
);

ThemeData cool = ThemeData(
  brightness: Brightness.light,
  /*primarySwatch: Colors.lightBlue,
  accentColor: Colors.blueAccent,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.cyan,*/
  fontFamily: 'Source Sans',
  textTheme: TextTheme(
    headline1: TextStyle(color: Colors.white),
    headline6: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontStyle: FontStyle.normal),
  ),
);
