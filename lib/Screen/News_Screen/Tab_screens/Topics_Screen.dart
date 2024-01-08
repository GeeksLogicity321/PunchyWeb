import 'package:flutter/material.dart';
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
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      // final currentindextopics = topics![index];
      return CatagoryCard(
        istopic: true,
        id: 10,
        title: 'headline',
        subtitle: 'description',
      );
    },
  );
}
