import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'widgets/tabCarousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amity University'),
        backgroundColor: kSecondaryColor,
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
          // Container(
          //   padding: const EdgeInsets.all(5.0),
          //   width: size.width * 0.9,
          //   height: size.height * 0.4,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(14),
          //     border: Border.all(
          //       width: 1.0,
          //       color: kBlueBorder,
          //     ),
          //     // boxShadow: const [
          //     //   BoxShadow(
          //     //     color: Colors.black,
          //     //     spreadRadius: 2,
          //     //     blurRadius: 10,
          //     //   ),
          //     // ],
          //   ),
          //   child: Column(
          //     children: const [
          //       Text(
          //         'My Classes',
          //         style: TextStyle(
          //           fontSize: 19,
          //           color: kText,
          //         ),
          //       ),
          //       Divider(
          //         color: kGrey,
          //         height: 2.0,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
