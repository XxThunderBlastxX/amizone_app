import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'widgets/appbar.dart';
import 'widgets/tabCarousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Total Size (width and height) of screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      // appBar: AppBar(
      //   elevation: 0.0,
      //   title: const Text('Amity University'),
      //   backgroundColor: kSecondaryColor,
      //   leading: IconButton(
      //     onPressed: () => drawerController.toggle!(),
      //     icon: const Icon(Icons.subject),
      //   ),
      //   flexibleSpace: const AppBarGradient(
      //     height: 0.5,
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HomeAppBar(),
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
