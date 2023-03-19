import 'package:flutter/material.dart';

import '/utils/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  bool showLeftIcon;
  String title;
  String subtitle;
  Widget? rightActions;

  CustomAppBar({
    super.key,
    this.showLeftIcon = true,
    this.title = "",
    this.subtitle = "",
    this.rightActions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (showLeftIcon)
              IconButton(
                splashRadius: 24,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: Image.asset(
                  ImageNames.arrowleft,
                  width: 24,
                  height: 24,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.large),
              child: Text(
                title,
                style: AppTextStyles.titleStyle,
              ),
            ),
            const Spacer(),
            rightActions ?? Container()
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: AppSpacing.xSmall,
              left: showLeftIcon ? (AppSpacing.large + 24) : AppSpacing.large),
          child: Text(
            subtitle,
            style: AppTextStyles.regularTextLight,
          ),
        ),
      ],
    );
  }
}
