import 'package:flutter/material.dart';

import '/utils/constants/constants.dart';

class CustomInput extends StatelessWidget {
  String placeholder;
  String? Function(String?)? validator;
  TextEditingController controller;
  TextInputType? keyboardType;

  CustomInput({
    super.key,
    required this.placeholder,
    required this.controller,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.xSmall,
        horizontal: AppSpacing.large,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: TextFormField(
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        cursorColor: CustomColors.darkText,
        decoration: InputDecoration(
          labelStyle: AppTextStyles.regularText,
          hintStyle: AppTextStyles.regularTextLight,
          hintText: placeholder,
          border: InputBorder.none,
        ),
        validator: validator,
      ),
    );
  }
}
