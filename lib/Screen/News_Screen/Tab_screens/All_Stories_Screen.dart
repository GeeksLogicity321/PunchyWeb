import 'package:flutter/material.dart';

import 'weidget/All_Stories_Card.dart';

class AllStoriesScreen extends StatelessWidget {
  const AllStoriesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return AllStoriesCard(
          id: 10,
          pubTime: 'story.pubTime',
          title: 'story.headline',
          subtitle: 'story.intro',
          image: 'story.coverImage.id',
        );
      },
    );
  }
}
