import 'package:amizone_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../controller/drawer_controller.dart';
import '../home/home_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: drawerController,
      borderRadius: 24,
      style: DrawerStyle.Style1,
      openCurve: Curves.fastOutSlowIn,
      disableGesture: false,
      mainScreenTapClose: false,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      duration: const Duration(milliseconds: 500),
      backgroundColor: kSecondaryColor,
      showShadow: true,
      angle: 0.0,
      clipMainScreen: true,
      menuScreen: Scaffold(
        // backgroundColor: kBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('Drawer list')],
        ),
      ),
      mainScreen: const HomeScreen(),
    );
  }
}