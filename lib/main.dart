import 'package:cheezious_user/screens/OTPVerification/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './screens/screens.dart';
import '/utils/constants/constants.dart';
import './l10n/l10n.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cheezious',
      debugShowCheckedModeBanner: false,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      theme: ThemeData(
        scaffoldBackgroundColor: CustomColors.scaffoldBackground,
        fontFamily: "Manrope",
      ),
      home: WelcomeScreen(),
      routes: {
        SigninScreen.routeName: (ctx) => SigninScreen(),
        PhoneNumberScreen.routeName: (ctx) => PhoneNumberScreen(),
        OTPVerificationScreen.routeName: (ctx) => OTPVerificationScreen(),
      },
    );
  }
}
