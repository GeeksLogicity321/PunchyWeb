import 'package:flutter/material.dart';

import '../../../../../constant/constants.dart';
import 'weidget/All_Stories_Card.dart';

class SpecificTopicScreen extends StatelessWidget {
  const SpecificTopicScreen({super.key});
  static const routename = 'SpecificTopicScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Topics',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: kOtherColor),
          ),
        ),
        backgroundColor: kPrimaryLightColor,
        body: ListView.builder(
          // scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return AllStoriesCard(
              pubTime: 'pubTime',
              id: 10,
              image: 'imageId',
              title: 'headline',
              subtitle: 'intro',
            );
          },
        ));
  }
}
