import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Prorvider/StoriesProvider.dart';
import '../../../Widgets.dart/StoryWidget/HompageStoryCardWidget.dart';

class AllStoriesScreen extends StatelessWidget {
  const AllStoriesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 500,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Consumer<StoriesProvider>(builder: (_, storiesProvider, __) {
            if (storiesProvider.stories.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: storiesProvider.stories.length,
                itemBuilder: (context, index) {
                  final story = storiesProvider.stories[index];
                  return StoryCard(
                    storycontext: story.context,
                    id: story.id,
                    title: story.headline,
                    subtitle: story.intro,
                    image: story.coverImage.id,
                  );
                },
              );
            }
          });

          // const AllStoriesCard(
          //   id: 10,
          //   pubTime: 'story.pubTime',
          //   title: 'story.headline',
          //   subtitle: 'story.intro',
          //   image: 'story.coverImage.id',
          // );
        },
      ),
    );
  }
}
