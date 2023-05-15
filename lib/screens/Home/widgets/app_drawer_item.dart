import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '/utils/constants/constants.dart';

class AppDrawerItem extends StatelessWidget {
  String title;
  String icon;
  VoidCallback onPress;

  AppDrawerItem({
    required this.icon,
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScaleTap(
          onPressed: onPress,
          duration: const Duration(milliseconds: 700),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.large, vertical: AppSpacing.large),
            child: Row(
              children: [
                Image.asset(
                  icon,
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: AppSpacing.medium),
                Text(
                  title,
                  style: AppTextStyles.regularTextSemiBold,
                ),
                const Spacer(),
                const Icon(
                  Icons.chevron_right,
                  size: 28,
                ),
              ],
            ),
          ),
        ),
        const Divider(height: 1)
      ],
    );
  }
}
