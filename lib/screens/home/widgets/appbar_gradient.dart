import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class AppBarGradient extends StatelessWidget {
  const AppBarGradient({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [kSecondaryColor, kPurpleColor],
          begin: FractionalOffset(0.0, 2.0),
          end: FractionalOffset(0.8, 0.0),
          stops: [0.0, 0.9],
        ),
      ),
    );
  }
}
