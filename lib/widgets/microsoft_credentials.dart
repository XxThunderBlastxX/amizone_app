import 'package:amizone_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Credentials extends StatelessWidget {
  const Credentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Live Classes',
            style: TextStyle(fontSize: 18.0),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Download Microsoft Teams',
              style: TextStyle(fontSize: 15, color: kLinkColor),
              softWrap: true,
            ),
          ),
          const Text(
            'Email-id: koustav.mondal@s.amity.edu',
            softWrap: true,
          ),
          const Text('Password: 638@dq*t'),
        ],
      ),
    );
  }
}
