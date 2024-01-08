import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../constant/constants.dart';
import '../SpecificCatagoryScreen.dart';
import '../SpecificTopicScreen.dart';

class CatagoryCard extends StatelessWidget {
  const CatagoryCard(
      {super.key,
      this.subtitle,
      required this.title,
      required this.id,
      required this.istopic});
  final bool istopic;
  final String? title;
  final String? subtitle;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.h / 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            alignment: const Alignment(-1, 0),
            backgroundColor: kPrimaryLightColor,
            padding: EdgeInsets.symmetric(vertical: 1.h * 2, horizontal: 4.w),
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        onPressed: () {
          if (istopic != true) {
            // Provider.of<NewsCatagoryProvider>(context, listen: false)
            //     .SelectCatagory(id);

            Navigator.pushNamed(context, SpecificCatagoryScreen.routename);
          } else {
            Navigator.pushNamed(context, SpecificTopicScreen.routename);
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              subtitle ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: kTextLightColor),
            ),
          ],
        ),
      ),
    );
  }
}
