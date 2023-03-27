import 'package:flutter/material.dart';

import '/utils/constants/constants.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPress;
  String title;
  ButtonStyle? style;
  double widht;
  double height;
  String? leftIcon;
  TextStyle? textStyle;

  CustomButton({
    required this.onPress,
    required this.title,
    this.style,
    this.widht = double.infinity,
    this.height = 50,
    this.leftIcon,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      decoration: style != null
          ? const BoxDecoration()
          : BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [CustomColors.gradientLight, CustomColors.gradientDark],
              ),
            ),
      child: ElevatedButton(
        onPressed: onPress,
        style: style ??
            ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leftIcon != null
                ? Image.asset(
                    leftIcon ?? '',
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.only(left: AppSpacing.medium),
              child: Text(
                title.toUpperCase(),
                style: textStyle ?? AppTextStyles.darkButtonStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
