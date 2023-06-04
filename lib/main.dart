import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import './screens/screens.dart';
import '/utils/utils.dart';
import '/navigators/navigators.dart';
import '/providers/providers.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => AppDrawerProvider(),
      child: MaterialApp(
        title: 'Cheezious',
        debugShowCheckedModeBanner: false,
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        theme: ThemeData(
          scaffoldBackgroundColor: CustomColors.scaffoldBackground,
          fontFamily: "Manrope",
          // colorScheme: const ColorScheme.light().copyWith(
          //   secondary: CustomColors.secondary,
          //   primary: Colors.black,
          //   onPrimary: CustomColors.secondary,
          // ),
        ),
        home: BottomAppNavigationScreen(),
        routes: {
          SigninScreen.routeName: (ctx) => SigninScreen(),
          PhoneNumberScreen.routeName: (ctx) => PhoneNumberScreen(),
          OTPVerificationScreen.routeName: (ctx) => OTPVerificationScreen(),
          UsernameScreen.routeName: (ctx) => UsernameScreen(),
          UserEmailScreen.routeName: (ctx) => UserEmailScreen(),
          TermsAndConditionsScreen.routeName: (ctx) =>
              TermsAndConditionsScreen(),
          RegistrationSuccessScreen.routeName: (ctx) =>
              RegistrationSuccessScreen(),
          BottomAppNavigationScreen.routeName: (ctx) =>
              BottomAppNavigationScreen(),
        },
      ),
    );
  }
}
