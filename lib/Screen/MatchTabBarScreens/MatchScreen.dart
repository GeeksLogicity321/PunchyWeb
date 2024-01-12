import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/AllliveMatchesProvider.dart';
import '../../../../constant/constants.dart';
import 'Tab_Screens/LiveScreen.dart';
import 'Tab_Screens/RecentScreen.dart';
import 'Tab_Screens/UpcomingScreen.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AllLiveMatchesProvider>().fetchMatches();
  }

  final List<Widget> _tabs = [
    const LiveScreen(),
    const UpcomingScreen(),
    const RecentScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: kCardColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: kDefaltAppBarColorGradient,
          title: Image.asset('assets/PUNCHY SPORTS.png'),
          bottom: const TabBar(
            tabAlignment: TabAlignment.center,
            unselectedLabelColor: Colors.white60,
            labelColor: Colors.white,
            tabs: [
              Tab(text: 'Live'),
              Tab(text: 'Upcoming'),
              Tab(text: 'Recent'),
            ],
          ),
        ),
        body: Container(
          color: kCardColor,
          child: TabBarView(
            children: _tabs,
          ),
        ),
      ),
    );
  }
}
