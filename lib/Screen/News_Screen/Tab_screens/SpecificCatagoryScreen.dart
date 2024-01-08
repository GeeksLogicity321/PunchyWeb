import 'package:flutter/material.dart';

import '../../../../../constant/constants.dart';
import 'weidget/All_Stories_Card.dart';

class SpecificCatagoryScreen extends StatelessWidget {
  const SpecificCatagoryScreen({super.key});
  static const routename = 'SpecificCatagoryScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'New',
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
              title: 'hline!',
              subtitle: 'intro',
              image: 'imageId',
            );
          },
        ));
  }
}
