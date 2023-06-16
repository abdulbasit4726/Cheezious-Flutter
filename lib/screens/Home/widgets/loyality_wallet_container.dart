import 'package:flutter/material.dart';

import '/utils/utils.dart';
import '/widgets/widgets.dart';

class LoyalityWalletContainer extends StatelessWidget {
  Widget _walletContainer(String icon, String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.small, horizontal: AppSpacing.small),
        child: Row(
          children: [
            CustomIcon(
              icon: icon,
              iconSize: 16,
              backgroundColor: null,
            ),
            const SizedBox(width: AppSpacing.xSmall),
            Text(
              text.toUpperCase(),
              style: const TextStyle(
                fontFamily: AppFonts.medium,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: CustomColors.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.secondary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          AppSpacing.large,
        ),
        child: Row(
          children: [
            const Text(
              'Your Points',
              style: TextStyle(
                fontFamily: AppFonts.regular,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: AppSpacing.small,
            ),
            const Text(
              '3299',
              style: TextStyle(
                fontFamily: AppFonts.bold,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            _walletContainer(ImageNames.topup, 'Top up'),
            const SizedBox(width: AppSpacing.small),
            _walletContainer(ImageNames.walletSecondary, 'Wallet'),
          ],
        ),
      ),
    );
  }
}
