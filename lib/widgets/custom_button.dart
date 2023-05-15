import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '/utils/constants/constants.dart';

class CustomButton extends StatefulWidget {
  VoidCallback onPress;
  String title;
  Decoration? decoration;
  double widht;
  double height;
  String? leftIcon;
  TextStyle? textStyle;

  CustomButton({
    required this.onPress,
    required this.title,
    this.decoration,
    this.widht = double.infinity,
    this.height = 50,
    this.leftIcon,
    this.textStyle,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      onPressed: widget.onPress,
      duration: const Duration(milliseconds: 700),
      child: Container(
        width: widget.widht,
        height: widget.height,
        decoration: widget.decoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [CustomColors.gradientLight, CustomColors.gradientDark],
              ),
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.leftIcon != null
                ? Image.asset(
                    widget.leftIcon ?? '',
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: EdgeInsets.only(
                  left: widget.leftIcon != null ? AppSpacing.medium : 0),
              child: Text(
                widget.title.toUpperCase(),
                style: widget.textStyle ?? AppTextStyles.darkButtonStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
