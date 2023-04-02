import 'package:flutter/material.dart';

import '/utils/constants/constants.dart';

class CustomCheckBox extends StatefulWidget {
  bool isCheck;

  CustomCheckBox({required this.isCheck});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 24,
      child: Checkbox(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        side: const BorderSide(
          color: CustomColors.secondary,
          width: 1.5,
        ),
        splashRadius: 0,
        value: widget.isCheck,
        onChanged: (_) {
          setState(() {
            widget.isCheck = !widget.isCheck;
          });
        },
        activeColor: CustomColors.secondary,
      ),
    );
  }
}
