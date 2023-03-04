import 'package:flutter/material.dart';

class CustomColors {
  static const scaffoldBackground = Color(0xFFF8F8F8);
  static const lightText = Color(0xFF8C8C8C);
  static const gradientLight = Color.fromRGBO(253, 240, 88, 1);
  static const gradientDark = Color.fromRGBO(255, 203, 5, 1);
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
  static const largeLabel = TextStyle(
    fontFamily: AppFonts.extraBold,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static const regularTextLight = TextStyle(
    fontFamily: AppFonts.regular,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: CustomColors.lightText,
  );

  static const gradientButtonStyle = TextStyle(
    fontFamily: AppFonts.extraBold,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
}

class AppSpacing {
  static const tiny = 2.0;
  static const xSmall = 4.0;
  static const small = 8.0;
  static const medium = 12.0;
  static const large = 16.0;
  static const xLarge = 20.0;
}
