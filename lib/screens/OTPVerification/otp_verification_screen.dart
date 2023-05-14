import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '/utils/constants/constants.dart';
import '/widgets/widgets.dart';
import './widgets/otp_container.dart';
import '/screens/screens.dart';

class OTPVerificationScreen extends StatelessWidget {
  static const routeName = '/OTPVerificationScreen';

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();

  OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.large,
              top: AppSpacing.small,
              right: AppSpacing.large,
              bottom: AppSpacing.large,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  title: "Back",
                  rightActions: CustomIcon(
                    icon: ImageNames.headset,
                    iconSize: 24.0,
                    onPress: () {
                      print("Headset");
                    },
                  ),
                ),
                Text(
                  AppLocalizations.of(context)?.enter_code_send ?? '',
                  style: AppTextStyles.largeTitle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.small),
                  child: Row(
                    children: const [
                      Text(
                        'To your cell phone number',
                        style: AppTextStyles.regularTextLight,
                      ),
                      SizedBox(width: 4),
                      Text('0300-1234567', style: AppTextStyles.darkButtonStyle)
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                OtpTextField(
                  numberOfFields: 6,
                  showFieldAsBox: true,
                  cursorColor: CustomColors.secondary,
                  borderWidth: 0,
                  focusedBorderColor: Colors.transparent,
                  filled: true,
                  fillColor: Colors.white,
                  fieldWidth: ((MediaQuery.of(context).size.width / 6) - 14),
                  textStyle: AppTextStyles.titleStyle,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     OTPContainer(
                //       controller: controller1,
                //     ),
                //     OTPContainer(
                //       controller: controller2,
                //     ),
                //     OTPContainer(
                //       controller: controller3,
                //     ),
                //     OTPContainer(
                //       controller: controller4,
                //     ),
                //     OTPContainer(
                //       controller: controller5,
                //     ),
                //     OTPContainer(
                //       controller: controller6,
                //     ),
                //   ],
                // ),
                const SizedBox(height: 28),
                Row(
                  children: [
                    const Text(
                      'Didn\'t Receive OTP Code?',
                      style: AppTextStyles.regularTextLight,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'RESEND',
                        style: AppTextStyles.darkButtonStyle,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: CustomColors.lightGray,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.small,
                        vertical: AppSpacing.xSmall,
                      ),
                      child: const Text(
                        '01:22',
                        style: TextStyle(
                          fontFamily: AppFonts.regular,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                CustomButton(
                    onPress: () {
                      Navigator.of(context).pushNamed(UsernameScreen.routeName);
                    },
                    title: 'Next')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
