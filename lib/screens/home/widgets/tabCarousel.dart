import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../widgets/attendence_graph.dart';
import '../../../widgets/fees.dart';
import '../../../widgets/microsoft_credentials.dart';
import '../../../widgets/webinar_details.dart';
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
            child: FeesContent(),
            darkColor: kPinkDark,
            lightColor: kPinkLight,
          ),
          DashboardTabs(
            child: Credentials(),
            darkColor: kBlueDark,
            lightColor: kBlueLight,
          ),
          DashboardTabs(
            child: WebinarDetails(),
            darkColor: kYellowDark,
            lightColor: kYellowLight,
          ),
        ],
      ),
    );
  }
}
