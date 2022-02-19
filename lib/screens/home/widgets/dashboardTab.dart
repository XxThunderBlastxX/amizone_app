import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class DashboardTabs extends StatelessWidget {
  const DashboardTabs({
    Key? key,
    this.child,
    this.darkColor,
    this.lightColor,
  }) : super(key: key);

  final Widget? child;
  final Color? darkColor;
  final Color? lightColor;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: size.width * 0.85,
      height: size.height * 0.16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            darkColor!,
            lightColor!,
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: kGrey,
            spreadRadius: 1,
            offset: Offset(2.4, 1.8),
            blurRadius: 8,
          ),
        ],
      ),
      child: child,
    );
  }
}
