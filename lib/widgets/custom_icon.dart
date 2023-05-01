import 'package:flutter/material.dart';

import '/utils/constants/constants.dart';

class CustomIcon extends StatelessWidget {
  Color backgroundColor;
  String icon;
  double iconSize;
  VoidCallback? onPress;

  CustomIcon({
    super.key,
    this.backgroundColor = Colors.white,
    this.iconSize = 24.0,
    this.onPress,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.small),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(iconSize),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        // splashRadius: 1.0,
        icon: Image.asset(
          icon,
        ),
        iconSize: iconSize,
        onPressed: onPress,
      ),
    );
  }
}
