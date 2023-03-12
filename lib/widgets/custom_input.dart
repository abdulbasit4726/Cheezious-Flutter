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
    return TextFormField(
      keyboardType: keyboardType ?? TextInputType.text,
      controller: controller,
      cursorColor: CustomColors.secondary,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        hintText: placeholder,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: CustomColors.lightText,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: CustomColors.secondary,
          ),
        ),
      ),
      validator: validator,
    );
  }
}
