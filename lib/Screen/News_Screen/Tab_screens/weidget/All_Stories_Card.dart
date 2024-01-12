import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../constant/constants.dart';
import '../../../../Utills/ConvertTime.dart';
import '../../SpecificStoryScreen.dart';

class AllStoriesCard extends StatelessWidget {
  const AllStoriesCard({
    super.key,
    required this.title,
    this.image,
    required this.subtitle,
    required this.id,
    required this.pubTime,
  });

  final String title;
  final String? image;
  final String subtitle;
  final String pubTime;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w / 2),
      decoration: BoxDecoration(
          color: const Color(0xFFf4f7fe),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 3),
                spreadRadius: 1,
                blurRadius: 3,
                color: Colors.grey.withOpacity(0.5))
          ],
          borderRadius: kBorderRadiusAll),
      height: 100,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Provider.of<SpecificStoryProvider>(context, listen: false)
            //     .setid(id);

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SpecificStoryScreen()));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Padding(
                    //     padding: EdgeInsets.only(right: 2.w, bottom: 1.h),
                    //     child: ClipRRect(
                    //       borderRadius: BorderRadius.circular(10),
                    //       child: CachedNetworkImage(
                    //         imageUrl: ApiConstants.image + image.toString(),
                    //         placeholder: (context, url) => const Center(
                    //             child: CircularProgressIndicator()),
                    //         errorWidget: (context, url, error) =>
                    //             const Icon(Icons.error_outline),
                    //         width: 30.w,
                    //       ),
                    //     )),
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: kPrimaryColor),
                      // softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      convertEpochToTimeAgo('1704751176000'),
                      style: TextStyle(fontSize: 15, color: kTextHintColor),
                      // softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Text(
                  subtitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kTextLightColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
