import 'package:cheezious_user/screens/Home/widgets/loyality_wallet_container.dart';
import 'package:cheezious_user/utils/utils.dart';
import 'package:flutter/material.dart';

import './widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 12.0,
          ),
          child: Column(
            children: [
              HomeNavigationBar(onPress: () {
                Scaffold.of(context).openDrawer();
              }),
              const SizedBox(height: AppSpacing.large),
              TopHeaderOptions(),
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(height: AppSpacing.large),
                    LoyalityWalletContainer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
