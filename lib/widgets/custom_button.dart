import 'package:flutter/material.dart';

import '/utils/constants/constants.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPress;
  String title;
  bool isGradient;
  ButtonStyle? style;
  double widht;
  double height;

  CustomButton({
    required this.onPress,
    required this.title,
    this.isGradient = true,
    this.style,
    this.widht = double.infinity,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      decoration: BoxDecoration(
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
        child: Text(
          title,
          style: AppTextStyles.gradientButtonStyle,
        ),
      ),
    );
  }
}
