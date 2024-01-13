import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/NewsTopicsProvider.dart';
import 'weidget/CatagoryCard.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final topicsProvider = context.watch<TopicsProvider>();
    // return Consumer<TopicsProvider>(builder: (context, topicProvider, child) {
    //   if (!topicProvider.hasTopicData == true) {
    //     Provider.of<TopicsProvider>(context).fetchTopicsWithRetry();
    //     return const Center(
    //       child: CircularProgressIndicator(),
    //     );
    //   } else {
    return buildTopicsList();
    // }
  }
}

Widget buildTopicsList() {
  return Consumer<NewsTopicsProvider>(builder: (_, topicsProvider, __) {
    if (topicsProvider.topics.isEmpty) {
      topicsProvider.fetchTopics();
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(
        itemCount: topicsProvider.topics.length,
        itemBuilder: (BuildContext context, int index) {
          final currentindextopics = topicsProvider.topics[index];
          return CatagoryCard(
            istopic: true,
            id: currentindextopics.id!,
            title: currentindextopics.headline,
            subtitle: currentindextopics.description,
          );
        },
      );
    }
  });
}
