import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '/utils/constants/constants.dart';
import '/screens/signin/signin_screen.dart';
import '/widgets/widgets.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({super.key});

  @override
  State<WelcomeWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  int _current = 0;

  var images = [
    Image.asset(ImageNames.slide1, fit: BoxFit.fill),
    Image.asset(ImageNames.slide1, fit: BoxFit.fill),
    Image.asset(ImageNames.slide1, fit: BoxFit.fill),
  ];

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    var padding = screen.padding;
    var screenSize = screen.size;

    return SizedBox(
      child: Padding(
        padding: EdgeInsets.only(bottom: padding.bottom + AppSpacing.medium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: screenSize.height * 0.58,
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(
                        items: images,
                        options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1,
                          height: screenSize.height * 0.25,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 30,
                              color: Colors.black.withOpacity(0.5),
                              child: DotsIndicator(
                                dotsCount: images.length,
                                position: _current.toDouble(),
                                decorator: DotsDecorator(
                                  size: const Size(10, 10),
                                  activeSize: const Size(20, 10),
                                  activeColor: Colors.white,
                                  activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: AppSpacing.large,
                        right: AppSpacing.large,
                      ),
                      child: Column(
                        children: [
                          const Spacer(flex: 2),
                          Text(
                            AppLocalizations.of(context)?.welcomeMessage ?? "",
                            style: const TextStyle(
                              fontFamily: AppFonts.extraBold,
                              color: CustomColors.darkText,
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            'Lorem ipsum dolor sit amet consectetur. Non cursus eu velit ultrices vel. Dignissim ut et at.',
                            style: AppTextStyles.regularTextLight,
                          ),
                          const Spacer(flex: 4),
                          CustomButton(
                            title:
                                AppLocalizations.of(context)?.continueButton ??
                                    "",
                            onPress: () {
                              Navigator.of(context)
                                  .pushNamed(SigninScreen.routeName);
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
