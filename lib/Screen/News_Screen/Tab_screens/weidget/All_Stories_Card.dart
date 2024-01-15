import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../constant/constants.dart';
import '../../../../Prorvider/SpecificStoryProvider.dart';
import '../../../../Utills/ConvertTime.dart';
import '../../../../constant/api_constants.dart';
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
      // height: 100,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            context.read<SpecificStoryProvider>().setid(id);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SpecificStoryScreen()));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: ApiConstants.image + image.toString(),
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.error_outline),
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: kPrimaryColor),
                  // softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8),
                child: Text(
                  convertEpochToTimeAgo('1704751176000'),
                  style: TextStyle(fontSize: 10, color: kTextHintColor),
                  // softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8, top: 4),
                child: Text(
                  subtitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kTextLightColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
