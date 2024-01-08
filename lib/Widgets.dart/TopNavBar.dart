import 'package:flutter/material.dart';
import 'package:punchy_web/Screen/News_Screen/News_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constant/constants.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileTopNavBar(),
      desktop: (context) => deskTopTopNavBar(context),
    );
  }
}

Widget mobileTopNavBar() {
  return Container(
    color: kPrimaryColor,
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        navLogo()
      ],
    ),
  );
}

Widget deskTopTopNavBar(BuildContext context) {
  return Container(
    color: kPrimaryColor,
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewsScreen()));
                    },
                    child: const Text('Home',
                        style: TextStyle(color: Colors.white, fontSize: 18)))),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewsScreen()));
                    },
                    child: const Text('Matches',
                        style: TextStyle(color: Colors.white, fontSize: 18)))),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewsScreen()));
                    },
                    child: const Text('News',
                        style: TextStyle(color: Colors.white, fontSize: 18)))),
          ],
        ),
      ],
    ),
  );
}

Widget navLogo() {
  return Container(
    width: 110,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Logo.png'), fit: BoxFit.contain)),
  );
}
