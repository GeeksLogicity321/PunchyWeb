import 'package:flutter/material.dart';

import '../../../../constant/constants.dart';
import 'Tab_screens/All_Stories_Screen.dart';
import 'Tab_screens/Catagories_Screen.dart';
import 'Tab_screens/Topics_Screen.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final List<Widget> _tabs = [
    const AllStoriesScreen(),
    const CatagoriesScreen(),
    const TopicsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
          // backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Image.asset('assets/PUNCHY SPORTS.png'),
            flexibleSpace: kDefaltAppBarColorGradient,
            bottom: const TabBar(
              unselectedLabelColor: Colors.white60,
              labelColor: Colors.white,
              isScrollable: true,
              // indicatorColor: yellowColor,
              tabs: [
                Tab(text: 'All Stories'),
                Tab(text: 'Catagories'),
                Tab(text: 'Topics'),
              ],
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(color: kPrimaryLightColor),
            child: TabBarView(
              children: _tabs,
            ),
          )),
    );
  }
}
