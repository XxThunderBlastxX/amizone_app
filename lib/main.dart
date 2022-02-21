import 'package:amizone_app/constants/constants.dart';
import 'package:flutter/material.dart';

import './screens/calender/calender_screen.dart';
import './screens/home/home_screen.dart';
import 'screens/drawer/drawer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: kSecondaryColor),
      initialRoute: DrawerScreen.routeName,
      routes: {
        DrawerScreen.routeName: (context) => const DrawerScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        CalenderScreen.routeName: (context) => const CalenderScreen(),
      },
    );
  }
}
