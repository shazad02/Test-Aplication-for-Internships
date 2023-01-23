import 'package:flutter/material.dart';

ThemeData dark = ThemeData(
  canvasColor: const Color.fromARGB(255, 21, 86, 109),
  splashColor: Colors.white,
  primaryColor: const Color(0xFF8CE2FB),
  secondaryHeaderColor: const Color.fromARGB(255, 37, 150, 190),
  disabledColor: const Color(0xFF6f7275),
  errorColor: const Color(0xFFdd3135),
  brightness: Brightness.dark,
  hintColor: const Color(0xFFbebebe),
  cardColor: Colors.black,
  colorScheme: const ColorScheme.dark(
      primary: Color(0xFF8CE2FB), secondary: Color(0xFF8CE2FB)),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: const Color(0xFF8CE2FB))),
);
