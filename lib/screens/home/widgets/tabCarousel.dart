import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import 'dashboardTab.dart';

class TabCarousel extends StatelessWidget {
  const TabCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
