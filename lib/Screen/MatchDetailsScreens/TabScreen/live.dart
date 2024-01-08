import 'package:flutter/material.dart';
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
        Container(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          width: double.infinity,
          height: 15.h,
          color: kSecondaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('batTeamName'),
                      Text('batTeamName'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${'score '}-(${'overs'})',
                        style: const TextStyle(color: kTextBlackColor),
                      ),
                      Text(
                        '${'score'}-(${'overs'})',
                        style: const TextStyle(color: kTextBlackColor),
                      ),
                    ],
                  ),
                  Column(
                    children: [Text('CRR'), Text('currentRunRate')],
                  ),
                  const SizedBox(),
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
        ),
        SizedBox(
          height: 0.5.h,
        ),
        Expanded(
          child: Container(
            // height: 40.h,
            color: kPrimaryLightColor,
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
                      Text(
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
          ),
        )
      ],
    );
  }
}
