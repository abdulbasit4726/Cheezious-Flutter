import 'package:flutter/material.dart';

class AppDrawerProvider with ChangeNotifier {
  bool _isOpen = false;

  bool get isOpen {
    return _isOpen;
  }

  void openDrawer() {
    _isOpen = true;
    notifyListeners();
  }

  void closeDrawer() {
    _isOpen = false;
    notifyListeners();
  }
}
