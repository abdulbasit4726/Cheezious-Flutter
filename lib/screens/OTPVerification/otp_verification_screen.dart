import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '/utils/constants/constants.dart';
import '/widgets/widgets.dart';
import './widgets/otp_container.dart';

class OTPVerificationScreen extends StatelessWidget {
  static const routeName = '/OTPVerificationScreen';

  OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.large,
              vertical: AppSpacing.small,
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
                const SizedBox(height: AppSpacing.large),
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
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OTPContainer(),
                    OTPContainer(),
                    OTPContainer(),
                    OTPContainer(),
                    OTPContainer(),
                    OTPContainer(),
                  ],
                ),
                const SizedBox(height: 35),
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
                CustomButton(onPress: () {}, title: 'Next')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
