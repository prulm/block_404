import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.white).copyWith(
    primary: const Color(0xFF2669FE),
    secondary: const Color(0xFF2669FE),
    tertiary: const Color.fromARGB(255, 255, 255, 255),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorSchemeSeed: const Color(0xFF2669FE),
);