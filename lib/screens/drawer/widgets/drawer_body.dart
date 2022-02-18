import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../data/drawer_items.dart';
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
            //TODO : Add Screen Change Functionality to the  Drawer pages
            SizedBox(
              width: size.width * 0.56,
              height: size.height * 0.78,
              child: ListView.builder(
                itemCount: drawerItems.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    child: Icon(drawerItems[index].icon),
                  ),
                  title: Text(drawerItems[index].title.toString()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
