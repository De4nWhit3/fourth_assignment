import 'package:flutter/material.dart';

class AppTheme {
  static const Color light = Color.fromARGB(255, 71, 48, 40);
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
