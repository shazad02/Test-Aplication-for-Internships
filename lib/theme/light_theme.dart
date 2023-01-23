import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  canvasColor: const Color.fromARGB(255, 37, 150, 190),
  splashColor: Colors.black,
  primaryColor: const Color(0xFF8CE2FB),
  secondaryHeaderColor: const Color.fromARGB(255, 21, 86, 109),
  disabledColor: const Color(0xFFA0A4A8),
  errorColor: const Color(0xFFE84D4F),
  brightness: Brightness.light,
  hintColor: const Color(0xFF9F9F9F),
  cardColor: Colors.white,
  colorScheme: const ColorScheme.light(
      primary: Color(0xFF8CE2FB), secondary: Color(0xFF8CE2FB)),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: const Color(0xFF8CE2FB))),
);
