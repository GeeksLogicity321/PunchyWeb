import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/NewsTopicsProvider.dart';

import '../../../../../constant/constants.dart';
import '../../../Prorvider/News_CatagoryProvider.dart';
import 'weidget/All_Stories_Card.dart';

class SpecificCatagoryScreen extends StatefulWidget {
  SpecificCatagoryScreen({super.key, required this.istopic});

  final bool istopic;
  static const routename = 'SpecificCatagoryScreen';

  @override
  State<SpecificCatagoryScreen> createState() => _SpecificCatagoryScreenState();
}

class _SpecificCatagoryScreenState extends State<SpecificCatagoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'News',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: kOtherColor),
          ),
        ),
        backgroundColor: kPrimaryLightColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 500),
          child: widget.istopic
              ? Consumer<NewsTopicsProvider>(builder: (_, topicsProvider, __) {
                  return topicsProvider.specifictopics.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          // scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: topicsProvider.specifictopics.length,
                          itemBuilder: (context, index) {
                            final currentSpecificTopic =
                                topicsProvider.specifictopics[index];
                            return AllStoriesCard(
                              pubTime: currentSpecificTopic.pubTime,
                              id: currentSpecificTopic.id,
                              title: currentSpecificTopic.headline,
                              subtitle: currentSpecificTopic.seoHeadline,
                              image: currentSpecificTopic.imageId.toString(),
                            );
                          },
                        );
                })
              : Consumer<NewsCatagoryProvider>(
                  builder: (_, catagoryProvider, __) {
                  return catagoryProvider.specificCatagories.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          // scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: catagoryProvider.specificCatagories.length,
                          itemBuilder: (context, index) {
                            final currentSpecificTopic =
                                catagoryProvider.specificCatagories[index];
                            return AllStoriesCard(
                              pubTime: currentSpecificTopic.pubTime,
                              id: currentSpecificTopic.id,
                              title: currentSpecificTopic.headline,
                              subtitle: currentSpecificTopic.seoHeadline,
                              image: currentSpecificTopic.imageId.toString(),
                            );
                          },
                        );
                }),
        ));
  }
}
