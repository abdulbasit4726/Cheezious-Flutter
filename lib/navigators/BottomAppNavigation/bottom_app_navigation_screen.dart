import 'package:flutter/material.dart';

import '/utils/constants/constants.dart';
import '/screens/screens.dart';
import '/widgets/widgets.dart';

class BottomAppNavigationScreen extends StatefulWidget {
  static const routeName = "/BottomAppNavigationScreen";

  @override
  State<BottomAppNavigationScreen> createState() =>
      _BottomAppNavigationScreenState();
}

class _BottomAppNavigationScreenState extends State<BottomAppNavigationScreen> {
  int _selectedIndex = 0;

  /// Screens for bottom tabs
  ///
  final _screens = [
    HomeScreen(),
    ExploreScreen(),
    PromosScreen(),
    BranchesScreen(),
    QRScanScreen(),
  ];

  /// Bottom tabs icons and text
  final _bottomTabs = [
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          ImageNames.homeUnselected,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
      label: 'HOME',
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          ImageNames.homeSelected,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
          color: CustomColors.secondary,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          ImageNames.searchUnselected,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
      label: 'EXPLORE',
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          ImageNames.searchSelected,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
          color: CustomColors.secondary,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          ImageNames.tagUnselected,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
      label: 'PROMOS',
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          ImageNames.tagSelected,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
          color: CustomColors.secondary,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          ImageNames.shopUnselected,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
      label: 'BRANCHES',
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          ImageNames.shopSelected,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
          color: CustomColors.secondary,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          ImageNames.qrscan,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
      label: 'QR SCAN',
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Image.asset(
          ImageNames.qrscan,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
          color: CustomColors.secondary,
        ),
      ),
    ),
  ];

  /// Function for taping on bottom navigation items
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: AppSpacing.large,
          items: _bottomTabs,
          iconSize: 28.0,
          selectedItemColor: CustomColors.secondary,
          unselectedLabelStyle: AppTextStyles.bottomTabLabel,
          selectedLabelStyle: AppTextStyles.bottomTabLabel,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
