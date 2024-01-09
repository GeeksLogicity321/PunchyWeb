import 'package:flutter/material.dart';
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
    return internationalAndDomesticMatches(
        // allmatchesProvider,
        context);
  }

  Scaffold internationalAndDomesticMatches(
      // AllLiveMatchesProvider allliveProvider,
      BuildContext context) {
    return Scaffold(
      backgroundColor: kCardColor,
      body: StreamBuilder(
          stream: Stream.periodic(const Duration(seconds: 100000), (i) {
            // Provider.of<AllHomeInternationalMatchInfoProvider>(context)
            //     .fetchMatchesWithRetry();
          }),
          builder: (context, snapshot) {
            print('object');
            // List<Matches> internationalMatches = getMatches(
            //     'International', allliveProvider.allLiveMatchesInfo);
            // List<Matches> domesticMatches =
            //     getMatches('Domestic', allliveProvider.allLiveMatchesInfo);
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, top: 1.h),
                    child: Text(
                      'international',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: kOtherColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return MatchCardWeidget(
                            // match: internationalMatches[index],
                            );
                      }),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, top: 1.h),
                    child: Text(
                      'Domestic',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: kOtherColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return MatchCardWeidget(
                            // match: domesticMatches[index],
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
