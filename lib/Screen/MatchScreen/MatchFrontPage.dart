import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Prorvider/StoriesProvider.dart';
import '../../Widgets.dart/PageViewWeidget.dart';
import '../../Widgets.dart/StoryWidget/HompageStoryCardWidget.dart';

class MatchFrontPage extends StatelessWidget {
  const MatchFrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: PageViewWidget(),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 500,
          child: Consumer<StoriesProvider>(builder: (_, storiesProvider, __) {
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
          }),
        )
      ],
    );
  }
}
