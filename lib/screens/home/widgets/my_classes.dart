import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class MyClasses extends StatelessWidget {
  const MyClasses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.45,
      // padding: EdgeInsets.all(14),
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: kGrey,
            spreadRadius: 1,
            offset: Offset(1.3, 2.5),
            blurRadius: 6,
          ),
        ],
        border: Border.all(
          width: 1.1,
          color: kGrey,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
