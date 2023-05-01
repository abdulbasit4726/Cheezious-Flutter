import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '/widgets/widgets.dart';
import '/utils/constants/constants.dart';
import '../screens.dart';

class PhoneNumberScreen extends StatelessWidget {
  static const routeName = "/PhoneNumberScreen";
  final TextEditingController _nameController = TextEditingController();

  Widget phoneNumberField() {
    return IntlPhoneField(
      initialCountryCode: 'PK',
      cursorColor: CustomColors.secondary,
      dropdownIcon: const Icon(
        Icons.keyboard_arrow_down_sharp,
        color: CustomColors.lightText,
      ),
      flagsButtonPadding: const EdgeInsets.only(left: 16),
      showCountryFlag: false,
      dropdownIconPosition: IconPosition.trailing,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        hintText: 'Phone Number',
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
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.large,
              top: AppSpacing.small,
              right: AppSpacing.large,
              bottom: AppSpacing.large,
            ),
            child: Column(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)?.phone_number ?? '',
                      style: AppTextStyles.largeTitle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: AppSpacing.small),
                      child: Text(
                        AppLocalizations.of(context)?.send_code_message ?? '',
                        style: AppTextStyles.regularTextLight,
                      ),
                    ),
                    const SizedBox(height: 35),
                    phoneNumberField(),
                  ],
                ),
                const Spacer(),
                CustomButton(
                  leftIcon: ImageNames.chat,
                  onPress: () {
                    Navigator.of(context)
                        .pushNamed(OTPVerificationScreen.routeName);
                  },
                  title: AppLocalizations.of(context)
                          ?.receive_code_sms
                          .toUpperCase() ??
                      '',
                ),
                const SizedBox(height: AppSpacing.large),
                CustomButton(
                  leftIcon: ImageNames.whatsapp,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPress: () {
                    print('Whatsapp');
                  },
                  title: AppLocalizations.of(context)
                          ?.receive_code_whatsapp
                          .toUpperCase() ??
                      '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
