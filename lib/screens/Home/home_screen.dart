import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './widgets/widgets.dart';
import '/providers/providers.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';

  @override
  Widget build(BuildContext context) {
    var drawerProvider = Provider.of<AppDrawerProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeNavigationBar(),
            Center(
              child: ElevatedButton(
                child: Text("Open drawer"),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
