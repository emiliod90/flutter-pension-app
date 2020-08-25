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
    textTheme: TextTheme(
      bodyText1: TextStyle(
          fontSize: 18.0
      ),
      bodyText2: TextStyle(
          fontSize: 16.0
      ),
      button: TextStyle(
          fontSize: 18.0
      ),
    )
);

ThemeData dark = ThemeData(
  brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyText1: TextStyle(
          fontSize: 18.0
      ),
      bodyText2: TextStyle(
          fontSize: 16.0
      ),
      button: TextStyle(
          fontSize: 18.0
      ),
    )
);

/*
ThemeData cool = ThemeData(
  brightness: Brightness.light,
  */
/*primarySwatch: Colors.lightBlue,
  accentColor: Colors.blueAccent,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.cyan,*//*

  fontFamily: 'Open Sans',
  textTheme: TextTheme(
    headline1: TextStyle(color: Colors.white),
    headline6: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontStyle: FontStyle.normal),
  ),
);
*/
