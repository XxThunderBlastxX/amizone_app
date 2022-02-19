import 'package:flutter/material.dart';

import '../constants/constants.dart';

class WebinarDetails extends StatelessWidget {
  const WebinarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            'Online Guest Lecture/ Academic & Research Webinars',
            style: TextStyle(fontSize: 15.0),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Click Here',
              style: TextStyle(color: kLinkColor),
            ),
          ),
        ],
      ),
    );
  }
}
