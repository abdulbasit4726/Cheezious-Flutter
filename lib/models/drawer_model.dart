import 'package:flutter/material.dart';

class DrawerModel {
  String iconName;
  String title;
  VoidCallback onPress;

  DrawerModel({
    required this.iconName,
    required this.title,
    required this.onPress,
  });
}
