import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/SpecificMatchDetailProvider.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/constants.dart';

class Live extends StatelessWidget {
  const Live({super.key});

  // String convertText(CommentaryList originalText) {
  //   String commtext = originalText.commText!;
  //   String newConvertedText = originalText.commText!;
  //   if (originalText.commentaryFormats != null &&
  //       originalText.commentaryFormats!.bold != null) {
  //     for (var i = 0;
  //         i < originalText.commentaryFormats!.bold!.formatId!.length;
  //         i++) {
  //       newConvertedText = commtext.replaceAll(
  //           originalText.commentaryFormats!.bold!.formatId![i],
  //           originalText.commentaryFormats!.bold!.formatValue![i]);

  //       newConvertedText = commtext.replaceAll(
  //           originalText.commentaryFormats!.bold!.formatId![i],
  //           originalText.commentaryFormats!.bold!.formatValue![i]);
  //     }

  //     return newConvertedText;
  //   } else {
  //     return newConvertedText;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // final commentayProvider = Provider.of<CommentaryListProvider>(context);
    return Column(
      children: [
        Consumer<SpecificMatchDetailProvider>(
            builder: (_, specificMatchDetailProvider, __) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
            width: 500,
            height: 15.h,
            color: kSecondaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    specificMatchDetailProvider.matchinfoIsLoading
                        ? SizedBox()
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(specificMatchDetailProvider
                                  .matchinfo!
                                  .matchInfo!
                                  .matchTeamInfo!
                                  .last
                                  .battingTeamShortName!),
                              Text(specificMatchDetailProvider
                                  .matchinfo!
                                  .matchInfo!
                                  .matchTeamInfo!
                                  .last
                                  .bowlingTeamShortName!),
                            ],
                          ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${'score '}-(${'overs'})',
                          style: TextStyle(color: kTextBlackColor),
                        ),
                        Text(
                          '${'score'}-(${'overs'})',
                          style: TextStyle(color: kTextBlackColor),
                        ),
                      ],
                    ),
                    Column(
                      children: [Text('CRR'), Text('currentRunRate')],
                    ),
                    SizedBox(),
                  ],
                ),
                Text(
                  'customStatus',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.blue),
                ),
              ],
            ),
          );
        }),
        SizedBox(
          height: 0.5.h,
        ),
        SizedBox(
          width: 500,
          child: ListView.builder(
            // scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'overNumber',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Flexible(
                        child: Text(
                      'commentary',
                      // convertText(currentindexCommentary),
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
