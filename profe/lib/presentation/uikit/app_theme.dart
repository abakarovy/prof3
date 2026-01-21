import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color accent = Color(0x002074f2);
  static const Color accentInactive = Color(0x00c5d2ff);
  static const Color black = Color(0x002D2C2C);
  static const Color white = Color(0x00F7F7F7);
  static const Color error = Color(0x00FF4646);
  static const Color success = Color(0x0000B412);


}

abstract class AppTexts {
  static const double fontSizeTitle1 = 24.0;
  static const double fontSizeTitle2 = 20.0;
  static const double fontSizeTitle3 = 17.0;
  static const double fontSizeHeadline = 16.0;
  static const double fontSizeText = 15.0;

  static const double lineHeightTitle1 = 28.0;
  static const double lineHeightTitle2 = 28.0;
  static const double lineHeightTitle3 = 24.0;
  static const double lineHeightHeadline = 20.0;
  static const double lineHeightText = 15.0;

  static const double fontWeightRegular = 400.0;
  static const double fontWeightSemibold = 600.0;
}

abstract class AppDimensions {
  static const double padding1 = 4.0;
  static const double padding2 = 8.0;
  static const double padding3 = 16.0;

  
}


// not used in prof
abstract class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.accent,
        secondary: AppColors.accentInactive
      ),
      textTheme: TextTheme()
    );
  }
}