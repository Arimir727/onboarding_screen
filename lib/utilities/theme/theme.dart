import 'package:flutter/material.dart';
import 'package:onboarding_screen/utilities/theme/custom.themes/appbar.theme.dart';
import 'package:onboarding_screen/utilities/theme/custom.themes/text.theme.dart';

class MAppTheme {
  MAppTheme._();

// light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: MTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
  );

  // dark them
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MTextTheme.darkTextTheme,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
  );
}
