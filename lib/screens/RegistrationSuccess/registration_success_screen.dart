import 'package:flutter/material.dart';

import '/utils/constants/constants.dart';
import '/widgets/widgets.dart';

class RegistrationSuccessScreen extends StatelessWidget {
  static const routeName = '/RegistrationSuccessScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(43),
                    color: CustomColors.green,
                  ),
                  child: const Icon(
                    Icons.check_rounded,
                    size: 56,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 42,
                ),
                const Text(
                  'Thank You!',
                  style: AppTextStyles.largeTitle,
                ),
                const SizedBox(
                  height: AppSpacing.large,
                ),
                const Text(
                  'Your account has been create successfully.',
                  style: AppTextStyles.regularText,
                ),
                const Spacer(
                  flex: 2,
                ),
                CustomButton(onPress: () {}, title: 'Continue to home screen')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
