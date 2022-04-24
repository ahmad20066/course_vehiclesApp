import 'package:flutter/material.dart';

class Themes {
  static final lightMode = ThemeData(
    textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black)),
    fontFamily: 'Merriweather',
    primarySwatch: Colors.pink,
    scaffoldBackgroundColor: Colors.orange[100],
  );
  static final darkMode = ThemeData(
      fontFamily: 'Merriweather',
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black)),
      colorScheme: ColorScheme.dark());
}
