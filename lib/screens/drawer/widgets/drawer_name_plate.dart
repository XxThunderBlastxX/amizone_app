import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class DrawerNamePlate extends StatelessWidget {
  const DrawerNamePlate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: const BorderRadius.only(topRight: Radius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(9.0),
        color: kSecondaryColor,
        width: size.width * 0.56,
        height: size.height * 0.12,
        child: Row(
          children: [
            CircleAvatar(
              maxRadius: size.width * 0.078,
              minRadius: size.width * 0.065,
              child: const Text('KM'),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Mr. Koustav Mondal',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'A9100156234235',
                    style: TextStyle(fontSize: 13.5),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
