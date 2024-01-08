import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../constant/constants.dart';

class SpecificStoryScreen extends StatelessWidget {
  static const routename = 'SpecificStoryScreen';
  const SpecificStoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final specificStoryProvider = context.watch<SpecificStoryProvider>();
    return Scaffold(
      backgroundColor: kCardColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // CachedNetworkImage(
            //   imageUrl: ApiConstants.image +
            //       specificStoryProvider.coverimage.id.toString(),
            //   placeholder: (context, url) =>
            //       const Center(child: CircularProgressIndicator()),
            //   errorWidget: (context, url, error) =>
            //       const Center(child: Icon(Icons.error_outline)),
            //   width: double.infinity,
            //   fit: BoxFit.fitWidth,
            // ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
              child: Text(
                'caption!',
                style: TextStyle(color: kTextBlackColor, fontSize: 16.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Row(
                children: [
                  Text('name!'),
                  SizedBox(
                    width: 3.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'name!',
                        style: TextStyle(color: kPrimaryColor, fontSize: 10.sp),
                      ),
                      Text(
                        'time',
                        // convertEpochToTimeAgo(
                        //     specificStoryProvider.pubTime),
                        style: TextStyle(color: kTextHintColor, fontSize: 8.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
                      child: Text(
                        'description[index]',
                        style:
                            TextStyle(color: kTextBlackColor, fontSize: 13.sp),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
