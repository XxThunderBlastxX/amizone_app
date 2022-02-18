import 'package:flutter/material.dart';

class DrawerNamePlate extends StatelessWidget {
  const DrawerNamePlate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(topRight: Radius.circular(15)),
          child: Container(
            width: size.width * 0.56,
            height: size.height * 0.10,
            child: Image.asset(
              'assets/bg_image.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                      softWrap: true,
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'A9100156234235',
                      style: TextStyle(fontSize: 13.5, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
