import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../widgets/attendence_graph.dart';
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
            child: AttendanceGraph(),
            darkColor: kTealDark,
            lightColor: kTealLight,
          ),
          DashboardTabs(
            child: Center(),
            darkColor: kPinkDark,
            lightColor: kPinkLight,
          ),
          DashboardTabs(
            child: Center(),
            darkColor: kBlueDark,
            lightColor: kBlueLight,
          ),
          DashboardTabs(
            child: Center(),
            darkColor: kYellowDark,
            lightColor: kYellowLight,
          ),
        ],
      ),
    );
  }
}
