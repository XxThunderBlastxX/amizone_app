import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../controller/drawer_controller.dart';
import 'widgets/tabCarousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Total Size (width and height) of screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Text('Amity University'),
        backgroundColor: kSecondaryColor,
        leading: IconButton(
          onPressed: () => drawerController.toggle!(),
          icon: const Icon(Icons.menu),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TabCarousel(),
          Divider(
            indent: size.width * 0.05,
            endIndent: size.width * 0.05,
            color: kGrey,
          ),
        ],
      ),
    );
  }
}
