import 'package:flutter/material.dart';

class DashboardTabs extends StatelessWidget {
  const DashboardTabs({
    Key? key,
    this.title,
    this.darkColor,
    this.lightColor,
  }) : super(key: key);

  final String? title;
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
      ),
      child: Center(
        child: Text(title!),
      ),
    );
  }
}
