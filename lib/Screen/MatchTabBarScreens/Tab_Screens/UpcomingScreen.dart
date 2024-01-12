import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../../../constant/constants.dart';

import '../../../Models/LiveMatchesModel.dart';
import '../../../Prorvider/AllliveMatchesProvider.dart';
import 'weidget/match_card_weidget.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCardColor,
      body: StreamBuilder(
          stream: Stream.periodic(const Duration(seconds: 50), (i) {
            context.read<AllLiveMatchesProvider>().fetchMatches();
          }),
          builder: (context, snapshot) {
            final liveMatches =
                context.read<AllLiveMatchesProvider>().allLiveMatchesInfo;
            print('Recalling LiveMatches api after 5 seconds...');
            return liveMatches.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
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
          }),
    );
  }
}
