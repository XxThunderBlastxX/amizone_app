import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';

import '../../../constants/constants.dart';
import '../../../controller/drawer_controller.dart';
import '../../../provider/selected_drawer.dart';
import '../../../screens/drawer/widgets/drawer_body.dart';

class ZoomDrawerWidget extends StatelessWidget {
  const ZoomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var selectedDrawer = Provider.of<SelectedDrawer>(context);
    return Consumer<SelectedDrawer>(
      builder: (context, route, _) => ZoomDrawer(
        controller: drawerController,
        borderRadius: 24,
        style: DrawerStyle.Style1,
        openCurve: Curves.fastOutSlowIn,
        disableGesture: false,
        mainScreenTapClose: false,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        duration: const Duration(milliseconds: 380),
        backgroundColor: kSecondaryColor,
        showShadow: true,
        angle: 0.0,
        clipMainScreen: true,
        menuScreen: const DrawerBody(),
        mainScreen: route.routeName,
      ),
    );
  }
}
