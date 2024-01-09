import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/constants.dart';

class Highlight extends StatelessWidget {
  const Highlight({super.key});

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
    return Expanded(
      child: Container(
        // height: 40.h,
        color: kPrimaryLightColor,
        child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.ac_unit_sharp,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Flexible(
                      child: Text(
                    'converted text',
                    // convertText(currentindexCommentary),
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
