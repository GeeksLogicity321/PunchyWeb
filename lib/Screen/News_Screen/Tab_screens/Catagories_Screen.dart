import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/News_CatagoryProvider.dart';
import 'weidget/CatagoryCard.dart';

class CatagoriesScreen extends StatelessWidget {
  const CatagoriesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return buildCatagoryList();
  }

  Widget buildCatagoryList() {
    return Consumer<NewsCatagoryProvider>(builder: (_, catagoryprovider, __) {
      if (catagoryprovider.hasCatagorydata) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: catagoryprovider.catagories.storyType!.length,
          itemBuilder: (context, index) {
            final currentIndexCatagory =
                catagoryprovider.catagories.storyType![index];
            return CatagoryCard(
              title: currentIndexCatagory.name,
              id: currentIndexCatagory.id!,
              istopic: false,
              subtitle: currentIndexCatagory.description,
            );

            //  CatagoryCard(
            //   istopic: false,
            //   id: 10,
            //   title: 'name',
            //   subtitle: 'description',
            // );
          },
        );
      }
      {
        catagoryprovider.fetchCatagory();
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
