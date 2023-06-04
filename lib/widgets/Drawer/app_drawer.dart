import 'package:flutter/material.dart';

import '/utils/utils.dart';
import '/widgets/widgets.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.scaffoldBackground,
      width: MediaQuery.of(context).size.width * 0.8,
      child: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        child: ListView(
          children: [
            AppDrawerHeader(
              userName: "Login to Cheezious",
              phoneNumber: "Unlock offers & discounts",
            ),
            const Divider(height: 0.5),
            ...drawerItems.map(
              (item) {
                return AppDrawerItem(
                  icon: item.iconName,
                  title: item.title,
                  onPress: item.onPress,
                );
              },
            ),
            const DrawerFooter(),
          ],
        ),
      ),
    );
  }
}
