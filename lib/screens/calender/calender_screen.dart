import 'package:amizone_app/widgets/appbar.dart';
import 'package:flutter/material.dart';

class CalenderScreen extends StatelessWidget {
  //Route Name
  static const routeName = '/calender';
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TopAppBar()],
      ),
    );
  }
}
