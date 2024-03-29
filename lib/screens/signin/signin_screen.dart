import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '/widgets/widgets.dart';
import '/utils/constants/constants.dart';
import '/screens/screens.dart';

class SigninScreen extends StatelessWidget {
  static const routeName = '/SigninScreen';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.large,
              top: AppSpacing.small,
              right: AppSpacing.large,
              bottom: AppSpacing.small,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomIcon(
                      icon: ImageNames.headset,
                      iconSize: 24.0,
                      onPress: () {
                        print("Headset");
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Image.asset(
                  ImageNames.cheeziousLogo,
                  width: screenSize.width * 0.23,
                  height: screenSize.width * 0.23,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppSpacing.xLarge,
                    bottom: AppSpacing.medium,
                  ),
                  child: Text(
                    AppLocalizations.of(context)?.feelingHungry ?? '',
                    style: AppTextStyles.largeTitle,
                  ),
                ),
                Text(
                  AppLocalizations.of(context)?.lets_enjoy ?? '',
                  style: AppTextStyles.regularTextLight,
                ),
                const SizedBox(height: 60),
                CustomButton(
                  leftIcon: ImageNames.phoneBlack,
                  onPress: () {
                    Navigator.of(context)
                        .pushNamed(PhoneNumberScreen.routeName);
                  },
                  title: AppLocalizations.of(context)
                          ?.signin_with_phone
                          .toUpperCase() ??
                      '',
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: AppSpacing.large),
                  child: CustomButton(
                    leftIcon: ImageNames.google,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPress: () {
                      print('Google');
                    },
                    title: AppLocalizations.of(context)?.google.toUpperCase() ??
                        '',
                  ),
                ),
                CustomButton(
                  leftIcon: ImageNames.apple,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPress: () {
                    print('Apple');
                  },
                  title:
                      AppLocalizations.of(context)?.apple.toUpperCase() ?? '',
                  textStyle: AppTextStyles.whiteButtonStyle,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: AppSpacing.large),
                  child: CustomButton(
                    onPress: () {
                      print('Facebook');
                    },
                    title:
                        AppLocalizations.of(context)?.facebook.toUpperCase() ??
                            '',
                    textStyle: AppTextStyles.whiteButtonStyle,
                    decoration: BoxDecoration(
                      color: CustomColors.facebook,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    leftIcon: ImageNames.facebook,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppLocalizations.of(context)?.guest.toUpperCase() ?? '',
                    style: AppTextStyles.secondaryButtonStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
