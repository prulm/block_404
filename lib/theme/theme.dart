import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'NanutoSans',
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.white).copyWith(
    primary: const Color(0x0030CAE6),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'NanutoSans',
  colorSchemeSeed: const Color(0x0030CAE6),
);
