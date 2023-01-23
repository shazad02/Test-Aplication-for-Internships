import 'package:aplication/screen/register.dart';
import 'package:aplication/theme/dark_theme.dart';
import 'package:aplication/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplication',
      themeMode: ThemeMode.system,
      darkTheme: dark,
      theme: light,
      home: const RegisterScreen(),
    );
  }
}
