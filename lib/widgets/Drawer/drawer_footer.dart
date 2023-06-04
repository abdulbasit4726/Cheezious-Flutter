import 'package:flutter/material.dart';

import '/utils/utils.dart';
import '/widgets/widgets.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.darkText,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 105,
      child: Row(
        children: [
          CustomIcon(
            icon: ImageNames.logoTransparent,
            backgroundColor: Colors.transparent,
            iconSize: 28,
          ),
          const SizedBox(width: 4),
          const Text(
            'Cheezious Hotline',
            style: TextStyle(
              fontFamily: AppFonts.semiBold,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          CustomIcon(
            icon: ImageNames.whatsappOutlined,
            backgroundColor: null,
            iconSize: 28,
            onPress: () {},
          ),
          const SizedBox(width: 8),
          CustomIcon(
            icon: ImageNames.phoneWhite,
            backgroundColor: CustomColors.secondary,
            iconSize: 16,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
