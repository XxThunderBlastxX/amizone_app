import 'package:flutter/material.dart';

import '../screens/calender/calender_screen.dart';
import '../screens/home/home_screen.dart';

class SelectedDrawer extends ChangeNotifier {
  var _routeName = 'Home';
  Widget get routeName {
    notifyListeners();
    switch (_routeName) {
      case 'Home':
        return const HomeScreen();
        break;
      case 'Calender':
        return const CalenderScreen();
        break;
    }
    return const HomeScreen();
  }

  String updateCurrentRoute(String routeName) {
    notifyListeners();
    return _routeName = routeName;
  }
}
