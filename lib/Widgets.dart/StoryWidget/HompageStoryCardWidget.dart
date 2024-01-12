import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constant/api_constants.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
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
      // color: Color(0xFFE2E0E0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 4,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: ApiConstants.image + image.toString(),
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error_outline),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            subtitle,
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
