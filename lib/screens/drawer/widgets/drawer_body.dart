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
      backgroundColor: kSecondaryColor600,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DrawerNamePlate(),
            //TODO : Add Screen Change Functionality to the  Drawer pages
            ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(15.0)),
              child: SafeArea(
                child: Container(
                  width: size.width * 0.56,
                  height: size.height * 0.80,
                  color: kSecondaryColor400,
                  child: ListView.separated(
                    itemCount: drawerItems.length,
                    itemBuilder: (context, index) => ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        child: Icon(drawerItems[index].icon),
                      ),
                      title: Text(drawerItems[index].title.toString()),
                      // tileColor: kSecondaryColor400,
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                      color: kSecondaryColor600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
