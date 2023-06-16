import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '/widgets/widgets.dart';
import '/utils/utils.dart';

class HomeNavigationBar extends StatelessWidget {
  VoidCallback onPress;

  HomeNavigationBar({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(
          icon: ImageNames.sideMenu,
          backgroundColor: CustomColors.secondary,
          onPress: onPress,
          iconSize: 34,
        ),
        const SizedBox(width: 12),
        const Text(
          'Deliver To',
          style: AppTextStyles.regularText,
        ),
        const SizedBox(width: 8),
        const Text(
          'Home',
          style: AppTextStyles.regularTextSemiBold,
        ),
        const SizedBox(width: AppSpacing.tiny),
        ScaleTap(
          onPressed: () {},
          child: const Icon(
            Icons.expand_more,
          ),
        ),
        const Spacer(),
        ScaleTap(
          duration: const Duration(milliseconds: 700),
          onPressed: () {},
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomIcon(
                icon: ImageNames.cart,
                iconSize: 28,
                backgroundPadding: AppSpacing.medium,
              ),
              Container(
                width: 22,
                height: 22,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(11),
                ),
                child: const FittedBox(
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontFamily: AppFonts.medium,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
