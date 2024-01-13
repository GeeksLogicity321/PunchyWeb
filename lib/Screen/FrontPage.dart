import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/StoriesProvider.dart';
import 'package:punchy_web/Screen/MatchScreen/MatchFrontPage.dart';
import 'package:punchy_web/Screen/News_Screen/News_screen.dart';
import '../constant/constants.dart';
import 'MatchTabBarScreens/MatchScreen.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  void initState() {
    context.read<StoriesProvider>().fetchStories();
    super.initState();
  }

  int currentPage = 1;
  void changePage(int index) {
    if (currentPage != index) {
      currentPage = index;

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: kPrimaryColor,
            height: 70,
            child: Row(
              children: [
                const SizedBox(
                  width: 200,
                ),
                Container(
                  width: 110,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Logo.png'),
                          fit: BoxFit.contain)),
                ),
                SizedBox(
                  width: 500,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text('Home',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)))),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MatchScreen()));
                        },
                        child: const Text('Matches',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)))),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewsScreen()));
                        },
                        child: const Text('News',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)))),
                // pageToShow(),
              ],
            ),
          ),
          MatchFrontPage(),
        ],
      ),
    );
  }
}
