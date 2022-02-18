import 'package:flutter/material.dart';

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
      initialRoute: DrawerScreen.routeName,
      routes: {
        DrawerScreen.routeName: (context) => const DrawerScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
