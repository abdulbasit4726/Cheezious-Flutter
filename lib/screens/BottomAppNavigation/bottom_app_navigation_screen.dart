import 'package:flutter/material.dart';

class BottomAppNavigationScreen extends StatefulWidget {
  static const routeName = "/BottomAppNavigationScreen";

  @override
  State<BottomAppNavigationScreen> createState() =>
      _BottomAppNavigationScreenState();
}

class _BottomAppNavigationScreenState extends State<BottomAppNavigationScreen> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [],
        currentIndex: _selectedIndex,
      ),
    );
  }
}
