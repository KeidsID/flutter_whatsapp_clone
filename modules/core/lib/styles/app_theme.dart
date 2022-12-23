import 'package:flutter/material.dart';

import 'app_colors.dart';

final kTheme = ThemeData(
  colorSchemeSeed: kPrimaryColor,
  brightness: Brightness.light,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kSecondaryColor,
    foregroundColor: Colors.white,
  ),
);

final kDarkTheme = ThemeData(
  colorSchemeSeed: kSecondaryColor,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: kBgDarkColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: kAppBarBgDarkColor,
    foregroundColor: kAppBarFgDarkColor,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kSecondaryColor,
    foregroundColor: Colors.white,
  ),
);
