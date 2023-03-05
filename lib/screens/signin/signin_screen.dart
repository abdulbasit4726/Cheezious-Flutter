import 'package:cheezious_user/screens/welcome/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '/widgets/widgets.dart';

class SigninScreen extends StatelessWidget {
  static const routeName = '/SigninScreen';

  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: "Explore",
              subtitle: "Cheezious Johar Town Branch",
            ),
          ],
        ),
      ),
    );
  }
}
