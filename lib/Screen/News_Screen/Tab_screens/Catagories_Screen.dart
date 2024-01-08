import 'package:flutter/material.dart';
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
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return CatagoryCard(
          istopic: false,
          id: 10,
          title: 'name',
          subtitle: 'description',
        );
      },
    );
  }
}
