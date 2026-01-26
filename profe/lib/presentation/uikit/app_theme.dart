import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color accent = Color(0xFF2074f2);
  static const Color accentInactive = Color(0xFFc5d2ff);
  static const Color secondaryAccent = Color(0xFF73D5BC);
  
  static const Color black = Color(0xFF2D2C2C);
  static const Color white = Color(0xFFF7F7F7);
  static const Color pure = Colors.white;
  
  static const Color success = Color(0xFF00B412);
  static const Color error = Color(0xFFFF4646);
  
  static const Color description = Color(0xFF7E7E9A);
  static const Color caption = Color(0xFF939396);

  static const Color inputStroke = Color(0xFFEBEBEB);
  static const Color inputBg = Color(0xFFF5F5F9);
  static const Color inputIcon = Color(0xFFBFC7D1);
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

  static const FontWeight fontWeightRegular = FontWeight.w400;
  static const FontWeight fontWeightSemibold = FontWeight.w600;
  static const FontWeight fontWeightBold = FontWeight.w700;


  static const TextStyle title1_Bold = TextStyle(
    fontSize: fontSizeTitle1,
    fontWeight: AppTexts.fontWeightBold,
    // height: AppTexts.fontSizeTitle1
  );
  static const TextStyle text_Regular = TextStyle(
    fontSize: fontSizeText,
    fontWeight: fontWeightRegular,
    // height: lineHeightHeadline
  );
}

abstract class AppDimensions {
  static const double padding4 = 4.0;
  static const double padding8 = 8.0;
  static const double padding16 = 16.0;
  static const double padding24 = 24.0;
  static const double padding32 = 32.0;
  static const double padding40 = 40.0;
  static const double padding48 = 48.0;
  static const double padding56 = 56.0;
  static const double padding64 = 64.0;

}


// not used in prof
abstract class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.accent,
        secondary: AppColors.accentInactive,
        surface: AppColors.pure,
      ),
      textTheme: TextTheme(),
    );
  }
}