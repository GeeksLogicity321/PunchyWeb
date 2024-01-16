import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Prorvider/SpecificMatchDetailProvider.dart';
import '../../constant/constants.dart';
import 'TabScreen/Highlights.dart';
import 'TabScreen/Overs.dart';
import 'TabScreen/Squads.dart';
import 'TabScreen/info.dart';
import 'TabScreen/live.dart';
import 'TabScreen/scoreboard.dart';

class MatchStatusScreen extends StatefulWidget {
  static const routeName = 'MatchStatusScreen';
  const MatchStatusScreen({super.key});

  @override
  State<MatchStatusScreen> createState() => _MatchStatusScreenState();
}

class _MatchStatusScreenState extends State<MatchStatusScreen>
    with TickerProviderStateMixin {
  final List<Widget> _tabs = [
    const Info(),
    const Live(),
    ScoreBoard(),
    const Squads(),
    const Overs(),
    const Highlight(),
  ];

  // void _ontap(tab) {
  //   final matchId =
  //       Provider.of<ScoreCardProvider>(context, listen: false).selected;
  //   final team1id =
  //       Provider.of<ScoreCardProvider>(context, listen: false).team1id;
  //   final team2id =
  //       Provider.of<ScoreCardProvider>(context, listen: false).team2id;
  //   print('ontap match id ============ $matchId');
  //   switch (tab) {
  //     case 1:
  //       {
  //         Provider.of<CommentaryListProvider>(context, listen: false)
  //             .setSelected(matchId);
  //       }
  //       break;
  //     case 2:
  //       {
  //         Provider.of<ScoreCardProvider>(context, listen: false)
  //             .setSelected(matchId, team1id, team2id);
  //       }
  //       break;

  //     case 3:
  //       {
  //         Provider.of<SquadProvider>(context, listen: false)
  //             .setScorecard_id_teamid(matchId, team1id, team2id);
  //       }
  //       break;

  //     case 4:
  //       {
  //         Provider.of<OverInfoProvider>(context, listen: false)
  //             .setSelected(matchId);
  //       }
  //       break;

  //     case 0:
  //       {
  //         Provider.of<MatchInfoProvider>(context, listen: false)
  //             .setSelected(matchId, team1id, team2id);
  //       }
  //       break;
  //     case 6:
  //       {
  //         print("Over");
  //       }
  //       break;

  //     default:
  //       {
  //         print("Highlight");
  //       }
  //       break;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: kPrimaryLightColor,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          flexibleSpace: kDefaltAppBarColorGradient,
          title: Consumer<SpecificMatchDetailProvider>(
              builder: (_, specificMatchDetailProvider, __) {
            return specificMatchDetailProvider.matchinfoIsLoading
                ? SizedBox()
                : Text(
                    '${specificMatchDetailProvider.matchinfo!.matchInfo!.team1!.name!} vs ${specificMatchDetailProvider.matchinfo!.matchInfo!.team2!.name!}',
                    style: const TextStyle(color: Colors.white),
                  );
          }),
          bottom: const TabBar(
            unselectedLabelColor: Colors.white54,
            labelColor: Colors.white,
            tabAlignment: TabAlignment.center,
            // onTap: (value) => _ontap(value),
            isScrollable: true,
            tabs: [
              Tab(
                text: 'INFO',
              ),
              Tab(text: 'lIVE'),
              Tab(text: 'SCORECARD'),
              Tab(text: 'SQUADS'),
              Tab(text: 'OVERS'),
              Tab(text: 'HIGHLIGHTS'),
            ],
          ),
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}
