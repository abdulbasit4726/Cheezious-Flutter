import 'package:flutter/material.dart';

import '/widgets/widgets.dart';
import '/utils/constants/constants.dart';
import '/screens/screens.dart';

class UserEmailScreen extends StatelessWidget {
  static const routeName = '/UserEmailScreen';

  final TextEditingController _controller = TextEditingController();

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
                const Text(
                  'Finally, add your email',
                  style: AppTextStyles.largeTitle,
                ),
                const SizedBox(height: AppSpacing.large),
                const Text(
                  'Please enter your email address',
                  style: AppTextStyles.regularTextLight,
                ),
                const SizedBox(height: AppSpacing.xLarge),
                CustomInput(
                  placeholder: 'Enter Email Address',
                  controller: _controller,
                ),
                const Spacer(),
                CustomButton(
                    onPress: () {
                      Navigator.of(context)
                          .pushNamed(TermsAndConditionsScreen.routeName);
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
