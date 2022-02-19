import 'package:amizone_app/provider/selected_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/constants.dart';
import '../../../data/drawer_items.dart';
import 'drawer_name_plate.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var selectedDrawer = Provider.of<SelectedDrawer>(context, listen: true);
    return Scaffold(
      backgroundColor: kSecondaryColor600,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DrawerNamePlate(),
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
                      leading: CircleAvatar(
                        child: Icon(drawerItems[index].icon),
                      ),
                      title: Text(drawerItems[index].title.toString()),
                      onTap: () {
                        selectedDrawer.updateCurrentRoute(
                            drawerItems[index].title.toString());
                      },
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                      color: kSecondaryColor600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
