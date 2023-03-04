import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import './widgets/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeName = "/WelcomeScreen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isSplash = true;
  bool isSplashEnd = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isSplash = false;
      });
    });
  }

  Widget renderSplash(Size screenSize) {
    return AnimatedPositioned(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutBack,
      top: isSplash ? (screenSize.height * 0.65) : (screenSize.height * 0.11),
      onEnd: () {
        setState(() {
          isSplashEnd = true;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(ImageNames.cheeziousLogo,
              width: screenSize.width * 0.23, height: screenSize.width * 0.23),
          if (isSplash)
            Image.asset(
              ImageNames.cheeziousText,
              width: screenSize.width * 0.4,
              height: 30,
            )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        top: false,
        child: SizedBox(
          height: screenSize.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                height: (screenSize.height * 0.45),
                width: screenSize.width,
                child: Image.asset(
                  ImageNames.splashBackground,
                  fit: BoxFit.fill,
                ),
              ),
              renderSplash(screenSize),
              if (isSplashEnd) WelcomeWidget()
            ],
          ),
        ),
      ),
    );
  }
}
