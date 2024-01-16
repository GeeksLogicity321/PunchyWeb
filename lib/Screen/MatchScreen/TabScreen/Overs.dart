import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/SpecificMatchDetailProvider.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/constants.dart';

class Overs extends StatelessWidget {
  const Overs({super.key});

  int getLength(String? over) {
    if (over!.isNotEmpty) {
      final overWithoutSpaces = over.replaceAll(' ', '');
      final lengthosovers = overWithoutSpaces.length;

      return lengthosovers;
    } else {
      return 0;
    }
  }

  List<String> extractAlphabets(String? input) {
    final overWithoutSpaces = input?.replaceAll(' ', '');

    List<String> alphabets = [];
    if (overWithoutSpaces != null) {
      for (int i = 0; i < overWithoutSpaces.length; i++) {
        // Check if the character is an alphabet
        alphabets.add(overWithoutSpaces[i]);
      }
    }
    return alphabets;
  }

  MaterialColor extractColor(String? input) {
    MaterialColor color;
    if (input == 'W') {
      color = Colors.red;
    } else if (input == '0') {
      color = Colors.grey;
    } else if (input == '1') {
      color = Colors.blue;
    } else if (input == '3') {
      color = Colors.purple;
    } else if (input == '4') {
      color = Colors.amber;
    } else if (input == 'L') {
      color = Colors.green;
    } else {
      color = Colors.orange;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 450),
      child: Consumer<SpecificMatchDetailProvider>(
          builder: (_, specificMatchDetailProvider, __) {
        return specificMatchDetailProvider.oversInfoIsLoading == false &&
                specificMatchDetailProvider.oversInfo == null
            ? const Center(
                child: Text('match has not started yet'),
              )
            : Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                    color: kSecondaryColor,
                    height: 15.h,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Consumer<SpecificMatchDetailProvider>(
                            builder: (_, specificMatchDetailProvider, __) {
                          return specificMatchDetailProvider.oversInfoIsLoading
                              ? const SizedBox()
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(specificMatchDetailProvider
                                        .oversInfo!
                                        .matchScoreDetails!
                                        .inningsScoreList![0]
                                        .batTeamName!),
                                    Text(
                                      '${specificMatchDetailProvider.oversInfo!.matchScoreDetails!.inningsScoreList![0].score.toString()} - ${specificMatchDetailProvider.oversInfo!.matchScoreDetails!.inningsScoreList![0].wickets} (${specificMatchDetailProvider.oversInfo!.matchScoreDetails!.inningsScoreList![0].overs})',
                                      style: const TextStyle(
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      specificMatchDetailProvider.oversInfo!
                                          .matchScoreDetails!.customStatus!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(color: kPrimaryColor),
                                    ),
                                  ],
                                );
                        }),
                        Column(
                          children: [
                            const Text('CRR'),
                            Consumer<SpecificMatchDetailProvider>(
                                builder: (_, specificMatchDetailProvider, __) {
                              return specificMatchDetailProvider
                                      .oversInfoIsLoading
                                  ? const SizedBox()
                                  : Text(
                                      specificMatchDetailProvider
                                          .oversInfo!.currentRunRate
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium);
                            }),
                          ],
                        ),
                        Column(
                          children: [
                            const Text('RRR'),
                            Consumer<SpecificMatchDetailProvider>(
                                builder: (_, specificMatchDetailProvider, __) {
                              return specificMatchDetailProvider
                                      .oversInfoIsLoading
                                  ? const SizedBox()
                                  : Text(
                                      specificMatchDetailProvider
                                          .oversInfo!.requiredRunRate
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium);
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Consumer<SpecificMatchDetailProvider>(
                      builder: (_, specificMatchDetailProvider, __) {
                    return specificMatchDetailProvider.oversInfoIsLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView.builder(
                            itemCount: specificMatchDetailProvider
                                .oversInfo!.overSummaryList!.length,
                            itemBuilder: (context, index) {
                              final oversummaeylistindex =
                                  specificMatchDetailProvider
                                      .oversInfo!.overSummaryList![index];
                              return Padding(
                                padding: EdgeInsets.only(top: 0.5.h),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 5, right: 5, top: 8),
                                  height: 10.h,
                                  width: double.infinity,
                                  color: kSecondaryColor,
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Ov ${oversummaeylistindex.overNum!.round()}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: kPrimaryColor),
                                          ),
                                          Text(
                                            '${oversummaeylistindex.runs} runs',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${oversummaeylistindex.bowlNames![0]} to ${oversummaeylistindex.batStrikerNames![0]} & ${oversummaeylistindex.batStrikerNames!.length < 2 ? '' : oversummaeylistindex.batStrikerNames![1]}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(
                                              height: 4.h,
                                              width: 80.w,
                                              child: ListView.builder(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: getLength(
                                                      oversummaeylistindex
                                                          .oSummary),
                                                  itemBuilder:
                                                      (context, index) {
                                                    final alphabetlist =
                                                        extractAlphabets(
                                                            oversummaeylistindex
                                                                .oSummary);
                                                    return Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 5),
                                                      child: CircleAvatar(
                                                        radius: 30,
                                                        backgroundColor:
                                                            extractColor(
                                                                alphabetlist[
                                                                    index]),
                                                        child: Text(
                                                          alphabetlist[index],
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 12),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                  }))
                ],
              );
      }),
    );
  }
}
