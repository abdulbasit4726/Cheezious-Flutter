import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '/widgets/widgets.dart';
import '/utils/constants/constants.dart';

class SigninScreen extends StatelessWidget {
  static const routeName = '/SigninScreen';

  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSpacing.large),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomIcon(
                      icon: ImageNames.headset,
                      iconSize: 28.0,
                      onPress: () {
                        print("Headset");
                      },
                    ),
                  ],
                ),
              ),
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
              // Form(child: child)
            ],
          ),
        ),
      ),
    );
  }
}
