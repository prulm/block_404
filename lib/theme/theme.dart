import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  // fontFamily: 'NanutoSans',
  textTheme: ThemeData.light().textTheme,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue).copyWith(
    primary: const Color(0x0030CAE6),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  textTheme: ThemeData.dark().textTheme,
  // textTheme: const TextTheme(
  //   displayLarge: TextStyle(fontSize: 57, letterSpacing: 0),
  //   displayMedium: TextStyle(fontSize: 45, letterSpacing: 0),
  //   displaySmall: TextStyle(fontSize: 36, letterSpacing: 0),
  //   headlineLarge: TextStyle(fontSize: 32, letterSpacing: 0),
  //   headlineMedium: TextStyle(fontSize: 28, letterSpacing: 0),
  //   headlineSmall: TextStyle(fontSize: 24, letterSpacing: 0),
  //   titleLarge: TextStyle(fontSize: 22, letterSpacing: 0),
  //   titleMedium: TextStyle(fontSize: 16, letterSpacing: 0),
  //   titleSmall: TextStyle(fontSize: 14, letterSpacing: 0),
  //   bodyLarge: TextStyle(fontSize: 16, letterSpacing: 0),
  //   bodyMedium: TextStyle(fontSize: 14, letterSpacing: 0),
  //   bodySmall: TextStyle(fontSize: 12, letterSpacing: 0),
  //   labelLarge: TextStyle(fontSize: 14, letterSpacing: 0),
  //   labelMedium: TextStyle(fontSize: 12, letterSpacing: 0),
  //   labelSmall: TextStyle(fontSize: 11, letterSpacing: 0),
  // ),
  // fontFamily: 'NanutoSans',
  colorSchemeSeed: const Color(0x0030CAE6),
);
