import 'package:cheezious_user/utils/constants/constants.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class AppDrawer extends StatelessWidget {
  final _drawerItems = [
    AppDrawerItem(
      icon: ImageNames.notification,
      title: "Order History",
      onPress: () {
        print("Hello");
      },
    ),
    AppDrawerItem(
      icon: ImageNames.notification,
      title: "Order History",
      onPress: () {
        print("Hello");
      },
    ),
    AppDrawerItem(
      icon: ImageNames.notification,
      title: "Order History",
      onPress: () {
        print("Hello");
      },
    ),
    AppDrawerItem(
      icon: ImageNames.notification,
      title: "Order History",
      onPress: () {
        print("Hello");
      },
    ),
    AppDrawerItem(
      icon: ImageNames.notification,
      title: "Order History",
      onPress: () {
        print("Hello");
      },
    ),
    AppDrawerItem(
      icon: ImageNames.notification,
      title: "Order History",
      onPress: () {
        print("Hello");
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          AppDrawerHeader(
            userName: "Login to Cheezious",
            phoneNumber: "Unlock offers & discounts",
          ),
          const Divider(height: 0.5),
          ..._drawerItems.map(
            (item) {
              return Text('Hello');
            },
          ),
        ],
      ),
    );
  }
}
