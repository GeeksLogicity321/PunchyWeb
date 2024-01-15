import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/SpecificStoryProvider.dart';
import 'package:sizer/sizer.dart';
import '../../../../constant/constants.dart';
import '../../Utills/ConvertTime.dart';
import '../../constant/api_constants.dart';

class SpecificStoryScreen extends StatelessWidget {
  static const routename = 'SpecificStoryScreen';
  const SpecificStoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final specificStoryProvider = context.watch<SpecificStoryProvider>();
    return Consumer<SpecificStoryProvider>(
        builder: (_, specificStoryProvider, __) {
      return specificStoryProvider.isLoading
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              backgroundColor: kCardColor,
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 500),
                  child: Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl: ApiConstants.image +
                            specificStoryProvider.coverimage.id.toString(),
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Center(child: Icon(Icons.error_outline)),
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 2.w),
                        child: Text(
                          specificStoryProvider.coverimage.caption ?? '',
                          style: TextStyle(
                              color: kTextBlackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Row(
                          children: [
                            // Text('name!'),
                            SizedBox(
                              width: 3.w,
                            ),

                            Row(
                              children: [
                                specificStoryProvider.authors.name ==
                                        'Cricbuzz Staff'
                                    ? ClipOval(
                                        child: Image.asset(
                                        'assets/Logo.png',
                                        width: 20,
                                        height: 20,
                                      ))
                                    : ClipOval(
                                        child: CachedNetworkImage(
                                          imageUrl: ApiConstants.image +
                                              specificStoryProvider
                                                  .authors.imageId
                                                  .toString(),
                                          placeholder: (context, url) =>
                                              const Center(
                                                  child:
                                                      CircularProgressIndicator()),
                                          errorWidget: (context, url, error) =>
                                              const Center(
                                                  child: Icon(
                                                      Icons.error_outline)),
                                          width: 20,
                                          height: 20,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      specificStoryProvider.authors.name ==
                                              'Cricbuzz Staff'
                                          ? Text(
                                              'Punchy Staff',
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 10),
                                            )
                                          : Text(
                                              specificStoryProvider
                                                      .authors.name ??
                                                  '',
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 10),
                                            ),
                                      Text(
                                        convertEpochToTimeAgo(
                                          specificStoryProvider.pubTime,
                                        ),
                                        style: TextStyle(
                                            color: kTextHintColor, fontSize: 8),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: ListView.builder(
                            itemCount: specificStoryProvider.description.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.h, horizontal: 2.w),
                                child: Text(
                                  specificStoryProvider.description[index],
                                  style: TextStyle(
                                      color: kTextBlackColor, fontSize: 13),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
            );
    });
  }
}
