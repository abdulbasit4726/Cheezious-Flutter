import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '/widgets/widgets.dart';
import '/utils/constants/constants.dart';

class SigninScreen extends StatelessWidget {
  static const routeName = '/SigninScreen';
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();

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
        resizeToAvoidBottomInset: false,
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.large),
                          child: CustomInput(
                            controller: _nameController,
                            placeholder: "Full Name",
                            validator: (value) {},
                          ),
                        ),
                        CustomInput(
                          controller: _nameController,
                          placeholder: "Email (Optional)",
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {},
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: AppSpacing.large,
                          ),
                          child: phoneNumberField(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.large),
                          child: CustomButton(
                            title: "SIGN UP",
                            onPress: () {},
                          ),
                        )
                      ],
                    ),
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
