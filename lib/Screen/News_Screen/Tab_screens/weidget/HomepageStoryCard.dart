import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../constant/constants.dart';
import '../../SpecificStoryScreen.dart';

class HomePageStoryCard extends StatelessWidget {
  const HomePageStoryCard({
    super.key,
    required this.title,
    this.image,
    required this.subtitle,
    required this.id,
    required this.storycontext,
  });

  final String title;
  final String? image;
  final String subtitle;
  final String storycontext;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w / 2),
      decoration: BoxDecoration(
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //       offset: const Offset(0, 3),
          //       spreadRadius: 1,
          //       blurRadius: 3,
          //       color: Colors.grey.withOpacity(0.5))
          // ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4.w),
            topRight: Radius.circular(4.w),
          )),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Provider.of<SpecificStoryProvider>(context, listen: false)
            //     .setid(id);

            Navigator.pushNamed(context, SpecificStoryScreen.routename);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: Text(
                    storycontext.toUpperCase(),
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: kTextHintColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 10.sp),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // ClipRRect(
                //   borderRadius: kBorderRadiusAll,
                //     child: CachedNetworkImage(
                //               imageUrl: ApiConstants.image + image.toString(),
                //               placeholder: (context, url) => const Center(
                //                   child: CircularProgressIndicator()),
                //               errorWidget: (context, url, error) =>
                //                   const Icon(Icons.error_outline),

                //             ),

                // ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: kPrimaryColor),
                    // softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  subtitle,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
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
