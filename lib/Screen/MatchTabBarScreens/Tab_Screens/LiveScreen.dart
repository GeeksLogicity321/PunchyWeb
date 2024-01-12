import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Models/LiveMatchesModel.dart';
import 'package:punchy_web/Prorvider/AllliveMatchesProvider.dart';
import 'package:sizer/sizer.dart';
import '../../../../../constant/constants.dart';
import 'weidget/match_card_weidget.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  // List<Matches> getMatches(
  //     String match, List<LiveMatchesModel> allLiveMatchesInfo) {
  //   List<LiveMatchesModel> listOfMatches = [];

  //   listOfMatches = allLiveMatchesInfo.where((element) {
  //     return element.matchType == match;
  //   }).toList();
  //   List<Matches> allMatches = [];
  //   for (var i in listOfMatches) {
  //     for (var i2 in i.seriesMatches!) {
  //       if (i2.seriesAdWrapper != null) {
  //         for (var i3 in i2.seriesAdWrapper!.matches!) {
  //           allMatches.add(i3);
  //         }
  //       } else {
  //         null;
  //       }
  //     }
  //   }

  //   return allMatches;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCardColor,
      body: Consumer<AllLiveMatchesProvider>(builder: (_, liveMatches, __t) {
        return liveMatches.allLiveMatchesInfo.isEmpty
            ? CircularProgressIndicator()
            : StreamBuilder(
                stream: Stream.periodic(const Duration(seconds: 50), (i) {
                  context.read<AllLiveMatchesProvider>().fetchMatches();
                }),
                builder: (context, snapshot) {
                  final liveMatches = context
                      .watch<AllLiveMatchesProvider>()
                      .allLiveMatchesInfo;
                  print('Recalling LiveMatches api after 5 seconds... ');
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: liveMatches.length,
                            itemBuilder: (context, index) {
                              final currentMatchType = liveMatches[index];
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

                                        return currentMatch == SeriesAdWrapper
                                            ? Column(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4, top: 1.h),
                                                    child: Text(
                                                      currentMatchType
                                                              .matchType ??
                                                          '',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  kOtherColor,
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
                                                        return currentMatch ==
                                                                SeriesAdWrapper
                                                            ? SizedBox()
                                                            : MatchCardWeidget(
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
