import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import 'drawer_name_plate.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const DrawerNamePlate(),
            // ListView.builder(itemBuilder: itemBuilder,itemCount: ,)
          ],
        ),
      ),
    );
  }
}
