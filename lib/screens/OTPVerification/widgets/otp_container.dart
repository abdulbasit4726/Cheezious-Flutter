import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/utils/constants/app_theme.dart';

class OTPContainer extends StatelessWidget {
  TextEditingController controller;

  OTPContainer({required this.controller});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.width / 7,
      width: screenSize.width / 7.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Center(
        child: TextFormField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          cursorColor: Colors.black,
          style: AppTextStyles.titleStyle,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          controller: controller,
        ),
      ),
    );
  }
}
