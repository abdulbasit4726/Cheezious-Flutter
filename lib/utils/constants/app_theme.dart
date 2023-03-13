import 'package:flutter/material.dart';

class CustomColors {
  static const scaffoldBackground = Color(0xFFF8F8F8);
  static const darkText = Color(0xFF11112D);
  static const lightText = Color(0xFF8C8C8C);
  static const gradientLight = Color.fromRGBO(253, 240, 88, 1);
  static const gradientDark = Color.fromRGBO(255, 203, 5, 1);
  static const secondary = Color(0xFFF15B25);
  static const facebook = Color(0xFF3975EA);
}

class AppFonts {
  static const bold = "Manrope-Bold";
  static const extraBold = "Manrope-ExtraBold";
  static const extraLight = "Manrope-ExtraLight";
  static const light = "Manrope-Light";
  static const medium = "Manrope-Medium";
  static const regular = "Manrope-Regular";
  static const semiBold = "Manrope-SemiBold";
}

class AppTextStyles {
  static const regularTextLight = TextStyle(
    fontFamily: AppFonts.regular,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: CustomColors.lightText,
  );

  static const darkButtonStyle = TextStyle(
    fontFamily: AppFonts.extraBold,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: CustomColors.darkText,
  );

  static const whiteButtonStyle = TextStyle(
    fontFamily: AppFonts.extraBold,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static const secondaryButtonStyle = TextStyle(
    fontFamily: AppFonts.extraBold,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: CustomColors.secondary,
  );

  static const largeTitle = TextStyle(
    fontFamily: AppFonts.bold,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: CustomColors.darkText,
  );

  static const titleStyle = TextStyle(
    fontFamily: AppFonts.bold,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: CustomColors.darkText,
  );
}

class AppSpacing {
  static const tiny = 2.0;
  static const xSmall = 4.0;
  static const small = 8.0;
  static const medium = 12.0;
  static const large = 16.0;
  static const xLarge = 20.0;
  static const twoXL = 24.0;
  static const threeXL = 28.0;
  static const fourXL = 32.0;
}
