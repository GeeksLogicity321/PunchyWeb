import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/AllRecentMatchesprovider.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constant/constants.dart';

import 'weidget/match_card_weidget.dart';

class RecentScreen extends StatelessWidget {
  const RecentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCardColor,
      body: Consumer<AllRecentMatchesProvider>(builder: (_, recentMatches, __) {
        return recentMatches.allRecentMatchesInfo.isEmpty
            ? const CircularProgressIndicator()
            : StreamBuilder(
                stream: Stream.periodic(const Duration(seconds: 50), (i) {
                  context.read<AllRecentMatchesProvider>().fetchMatches();
                }),
                builder: (context, snapshot) {
                  final recentMatches = context
                      .watch<AllRecentMatchesProvider>()
                      .allRecentMatchesInfo;
                  // print('Recalling recentMatches api after 5 seconds... ');
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: recentMatches.length,
                            itemBuilder: (context, index) {
                              final currentMatchType = recentMatches[index];
                              return Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 4, top: 1.h),
                                    child: Text(
                                      currentMatchType.matchType ?? '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: kOtherColor,
                                              fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: currentMatchType
                                          .seriesMatches!.length,
                                      itemBuilder: (context, index) {
                                        final currentMatch = currentMatchType
                                            .seriesMatches![index];

                                        return currentMatch.seriesAdWrapper !=
                                                null
                                            ? Column(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4, top: 1.h),
                                                    child: Text(
                                                      currentMatch
                                                              .seriesAdWrapper!
                                                              .seriesName ??
                                                          '',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.grey,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  ),
                                                  ListView.builder(
                                                      physics:
                                                          const NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: currentMatch
                                                          .seriesAdWrapper!
                                                          .matches!
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        final currentMatches2 =
                                                            currentMatch
                                                                .seriesAdWrapper!
                                                                .matches!;
                                                        return MatchCardWeidget(
                                                          match:
                                                              currentMatches2[
                                                                  index],
                                                        );
                                                      }),
                                                ],
                                              )
                                            : SizedBox();
                                      }),
                                ],
                              );
                            }),
                      ],
                    ),
                  );
                  // }
                });
      }),
    );
  }
}
