import 'package:flutter/material.dart';

import '/widgets/widgets.dart';
import '/utils/constants/constants.dart';
import '/screens/screens.dart';

class UsernameScreen extends StatelessWidget {
  static const routeName = '/UsernameScreen';

  final TextEditingController _controller = TextEditingController();

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
                  'Hello!',
                  style: AppTextStyles.largeTitle,
                ),
                const SizedBox(height: AppSpacing.small),
                const Text(
                  'Whats your full name?',
                  style: AppTextStyles.largeTitle,
                ),
                const SizedBox(height: AppSpacing.large),
                const Text(
                  'Please enter your full name',
                  style: AppTextStyles.regularTextLight,
                ),
                const SizedBox(height: AppSpacing.xLarge),
                CustomInput(
                  placeholder: 'Enter Full Name',
                  controller: _controller,
                ),
                const Spacer(),
                CustomButton(
                    onPress: () {
                      Navigator.of(context)
                          .pushNamed(UserEmailScreen.routeName);
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
