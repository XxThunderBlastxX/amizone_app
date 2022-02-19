import 'package:amizone_app/provider/selected_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './widgets/zoom_drawer.dart';

class DrawerScreen extends StatelessWidget {
  //Route Name
  static const routeName = 'drawer';
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectedDrawer(),
      child: const ZoomDrawerWidget(),
    );
  }
}
