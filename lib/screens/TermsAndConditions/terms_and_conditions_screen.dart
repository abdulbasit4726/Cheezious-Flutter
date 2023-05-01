import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '/utils/constants/constants.dart';
import '/widgets/widgets.dart';
import '/screens/screens.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  static const routeName = "/TermsAndConditionsScreen";

  @override
  State<TermsAndConditionsScreen> createState() =>
      _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  final bool _isTermsAndConditions = false;
  final bool _isPrivacyPolicy = false;

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
                const Text(
                  'Terms and Conditions',
                  style: AppTextStyles.largeTitle,
                ),
                const SizedBox(height: AppSpacing.large),
                Row(
                  children: [
                    CustomCheckBox(isCheck: _isTermsAndConditions),
                    const SizedBox(width: AppSpacing.large),
                    RichText(
                      text: TextSpan(
                        style: AppTextStyles.regularText,
                        children: [
                          const TextSpan(text: 'I accept the'),
                          const WidgetSpan(
                            child: SizedBox(
                              width: AppSpacing.small,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms and Conditions',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('privacy');
                              },
                            style: const TextStyle(
                              fontFamily: AppFonts.extraBold,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.large),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomCheckBox(isCheck: _isPrivacyPolicy),
                    const SizedBox(width: AppSpacing.large),
                    Flexible(
                      child: RichText(
                        overflow: TextOverflow.clip,
                        text: TextSpan(
                          style: AppTextStyles.regularText,
                          children: [
                            const TextSpan(text: 'I accept the'),
                            const WidgetSpan(
                              child: SizedBox(
                                width: AppSpacing.small,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Privacy notice and information. Use policies and cookies policy.',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('privacy');
                                },
                              style: const TextStyle(
                                height: 1.5,
                                fontFamily: AppFonts.extraBold,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                CustomButton(
                  onPress: () {
                    Navigator.of(context)
                        .pushNamed(RegistrationSuccessScreen.routeName);
                  },
                  title: 'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
