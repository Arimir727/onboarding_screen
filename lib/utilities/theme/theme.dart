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
    // chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    // checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    // bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    // elevatedButtonTheme: TElevatedBtnTheme.lightElevatedBtnTheme,
    // outlinedButtonTheme: TOutlinedButtonThemeData.lightTheme,
    // inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  // dark them
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MTextTheme.darkTextTheme,
    // chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
    // checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    // bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    // elevatedButtonTheme: TElevatedBtnTheme.darkElevatedBtnTheme,
    // outlinedButtonTheme: TOutlinedButtonThemeData.darkTheme,
    // inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
