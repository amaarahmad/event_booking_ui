import 'package:event_booking_app/view_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawerScreen extends StatefulWidget {
  const HiddenDrawerScreen({super.key});

  @override
  State<HiddenDrawerScreen> createState() => _HiddenDrawerScreenState();
}

class _HiddenDrawerScreenState extends State<HiddenDrawerScreen> {
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'HomeScreen',
              baseStyle: const TextStyle(),
              selectedStyle: const TextStyle()),
          const HomeScreen()

      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Settings',
              baseStyle: const TextStyle(),
              selectedStyle: const TextStyle()),
          const HomeScreen()

      ),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      initPositionSelected: 0,
      backgroundColorMenu: Colors.green,
      contentCornerRadius: 50,
      slidePercent: 50,
    );
  }
}
