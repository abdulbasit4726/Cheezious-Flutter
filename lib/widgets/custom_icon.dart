import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '/utils/constants/constants.dart';

class CustomIcon extends StatelessWidget {
  Color? backgroundColor;
  String icon;
  double iconSize;
  bool isGradient;
  VoidCallback? onPress;

  CustomIcon({
    super.key,
    this.backgroundColor = Colors.white,
    this.iconSize = 24.0,
    this.onPress,
    this.isGradient = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      onPressed: onPress,
      duration: const Duration(milliseconds: 700),
      child: Container(
        padding: backgroundColor != null
            ? const EdgeInsets.all(AppSpacing.small)
            : EdgeInsets.zero,
        decoration: BoxDecoration(
          color: backgroundColor,
          gradient: isGradient
              ? const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    CustomColors.gradientLight,
                    CustomColors.gradientDark
                  ],
                )
              : null,
          borderRadius: BorderRadius.circular(iconSize),
        ),
        child: Image.asset(
          icon,
          width: iconSize,
          height: iconSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
