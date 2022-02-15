import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'widgets/dashboardTab.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            DashboardTabs(
              title: 'Attendance',
              darkColor: kTealDark,
              lightColor: kTealLight,
            ),
            DashboardTabs(
              title: 'No Fee Due',
              darkColor: kPinkDark,
              lightColor: kPinkLight,
            ),
            DashboardTabs(
              title: 'Live Classes',
              darkColor: kBlueDark,
              lightColor: kBlueLight,
            ),
            DashboardTabs(
              title: 'Online Guest Lecture',
              darkColor: kYellowDark,
              lightColor: kYellowLight,
            ),
          ],
        ),
      ),
    );
  }
}
