import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/constants.dart';
import 'weidgets/ScorecardWidget.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          //   child: Text(
          //     scoreCardProvider.scoreCard!.matchHeader!.status ??
          //         'match in progress',
          //     style: TextStyle(fontSize: 10.sp),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
            child: Text(
              'status',
              style: TextStyle(fontSize: 14, color: Colors.red),
            ),
          ),

          // Team 1 scoreboard

          Team1Weidget(),
          // Team 2 scoreboard
          Team2Weidget(),
        ],
      ),
    ]);
  }
}

class Team2Weidget extends StatefulWidget {
  const Team2Weidget({
    super.key,
  });

  @override
  State<Team2Weidget> createState() => _Team2WeidgetState();
}

class _Team2WeidgetState extends State<Team2Weidget> {
  bool team2visibility = false;

  _team2visibility() {
    setState(() {
      team2visibility = !team2visibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 500),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
                  child: Text(
                    'scoreCard',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                    color: Colors.white,
                    onPressed: () {
                      _team2visibility();
                    },
                    icon: team2visibility
                        ? const Icon(Icons.arrow_drop_down_sharp)
                        : const Icon(Icons.arrow_drop_up_sharp))
              ],
            ),
          ),
          Visibility(
            visible: team2visibility,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF7F7BFF),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
                  height: 3.h,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Text(
                            'Batter',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: kOtherColor),
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            'R',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: kOtherColor),
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            'B',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: kOtherColor),
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            '4s',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: kOtherColor),
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            '6s',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: kOtherColor),
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            'SR',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: kOtherColor),
                          )),
                    ],
                  ),
                ),
                ScoreCardWidget(
                  batter: 'batName',
                  r: 20,
                  b: 10,
                  fours: 5,
                  six: 9,
                  sr: 56.8,
                ),
                ScoreCardWidget(
                  batter: 'batName',
                  r: 20,
                  b: 10,
                  fours: 5,
                  six: 9,
                  sr: 56.8,
                ),
                ScoreCardWidget(
                  batter: 'batName',
                  r: 20,
                  b: 10,
                  fours: 5,
                  six: 9,
                  sr: 56.8,
                ),
                ScoreCardWidget(
                  batter: 'batName',
                  r: 20,
                  b: 10,
                  fours: 5,
                  six: 9,
                  sr: 56.8,
                ),
                ScoreCardWidget(
                  batter: 'batName',
                  r: 20,
                  b: 10,
                  fours: 5,
                  six: 9,
                  sr: 56.8,
                ),
                ScoreCardWidget(
                  batter: 'batName',
                  r: 20,
                  b: 10,
                  fours: 5,
                  six: 9,
                  sr: 56.8,
                ),
                ScoreCardWidget(
                  batter: 'batName',
                  r: 20,
                  b: 10,
                  fours: 5,
                  six: 9,
                  sr: 56.8,
                ),
                ScoreCardWidget(
                  batter: 'batName',
                  r: 20,
                  b: 10,
                  fours: 5,
                  six: 9,
                  sr: 56.8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Team1Weidget extends StatefulWidget {
  const Team1Weidget({
    super.key,
  });

  @override
  State<Team1Weidget> createState() => _Team1WeidgetState();
}

class _Team1WeidgetState extends State<Team1Weidget> {
  bool team1visibility = true;

  _team1visibility() {
    setState(() {
      team1visibility = !team1visibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 500),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
                  child: Text(
                    'batTeamName',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                    color: Colors.white,
                    onPressed: () {
                      _team1visibility();
                    },
                    icon: team1visibility
                        ? const Icon(Icons.arrow_drop_down_sharp)
                        : const Icon(Icons.arrow_drop_up_sharp))
              ],
            ),
          ),
          Visibility(
            visible: team1visibility,
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF7F7BFF),
                ),
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
                height: 3.h,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Text(
                          'Batter',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: kOtherColor),
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          'R',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: kOtherColor),
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          'B',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: kOtherColor),
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          '4s',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: kOtherColor),
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          '6s',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: kOtherColor),
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          'SR',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: kOtherColor),
                        )),
                  ],
                ),
              ),
              ScoreCardWidget(
                batter: 'batName',
                r: 20,
                b: 10,
                fours: 5,
                six: 9,
                sr: 56.8,
              ),
              ScoreCardWidget(
                batter: 'batName',
                r: 20,
                b: 10,
                fours: 5,
                six: 9,
                sr: 56.8,
              ),
              ScoreCardWidget(
                batter: 'batName',
                r: 20,
                b: 10,
                fours: 5,
                six: 9,
                sr: 56.8,
              ),
              ScoreCardWidget(
                batter: 'batName',
                r: 20,
                b: 10,
                fours: 5,
                six: 9,
                sr: 56.8,
              ),
              ScoreCardWidget(
                batter: 'batName',
                r: 20,
                b: 10,
                fours: 5,
                six: 9,
                sr: 56.8,
              ),
              ScoreCardWidget(
                batter: 'batName',
                r: 20,
                b: 10,
                fours: 5,
                six: 9,
                sr: 56.8,
              ),
              ScoreCardWidget(
                batter: 'batName',
                r: 20,
                b: 10,
                fours: 5,
                six: 9,
                sr: 56.8,
              ),
              ScoreCardWidget(
                batter: 'batName',
                r: 20,
                b: 10,
                fours: 5,
                six: 9,
                sr: 56.8,
              ),
              ScoreCardWidget(
                batter: 'batName',
                r: 20,
                b: 10,
                fours: 5,
                six: 9,
                sr: 56.8,
              ),
              ScoreCardWidget(
                batter: 'batName',
                r: 20,
                b: 10,
                fours: 5,
                six: 9,
                sr: 56.8,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
