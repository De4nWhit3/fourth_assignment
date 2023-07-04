import 'package:flutter/material.dart';

class AppTheme {
  static const Color light = Colors.yellow;
  static const Color dark = Colors.brown;

  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: light,
    ),
    scaffoldBackgroundColor: light,
  );

  static ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: dark,
    ),
    scaffoldBackgroundColor: dark,
  );
}
