import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '/widgets/widgets.dart';
import '/utils/constants/constants.dart';

class AppDrawerHeader extends StatelessWidget {
  String userName;
  String phoneNumber;

  AppDrawerHeader({
    required this.userName,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.large),
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomIcon(
                icon: ImageNames.cheeziousLogo,
                isGradient: true,
                iconSize: 36,
                onPress: () {},
              ),
              const Spacer(),
              CustomIcon(
                icon: ImageNames.notification,
                onPress: () => {},
              ),
              const SizedBox(width: AppSpacing.small),
              CustomIcon(
                icon: ImageNames.qrscan,
                onPress: () => {},
              ),
            ],
          ),
          const Spacer(),
          Text(userName, style: AppTextStyles.titleStyle),
          const SizedBox(height: AppSpacing.xSmall),
          Text(phoneNumber, style: AppTextStyles.regularText),
          const Spacer(),
          CustomButton(
            onPress: () {},
            title: "Sign in",
            height: 40,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
