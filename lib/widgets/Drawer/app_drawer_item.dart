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
    return Container(
      color: CustomColors.scaffoldBackground,
      child: Column(
        children: [
          ScaleTap(
            onPressed: onPress,
            duration: const Duration(milliseconds: 700),
            child: ListTile(
              leading: Image.asset(icon, width: 22, height: 22),
              title: Text(
                title,
                style: const TextStyle(
                  fontFamily: AppFonts.regular,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.5,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                size: 23,
                color: CustomColors.darkText,
              ),
              minLeadingWidth: 0,
            ),
          ),
          const Divider(height: 1)
        ],
      ),
    );
  }
}
