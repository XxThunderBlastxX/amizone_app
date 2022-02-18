import 'package:flutter/material.dart';

import '../../../controller/drawer_controller.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(22.0),
            bottomRight: Radius.circular(22.0),
          ),
          child: SizedBox(
            height: size.height * 0.1499,
            width: size.width,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('assets/bg_image.png'),
            ),
          ),
        ),
        SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 2.0,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => drawerController.toggle!(),
                    icon: const Icon(Icons.subject),
                    color: Colors.white,
                  ),
                  const Text(
                    'Amity University',
                    style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
