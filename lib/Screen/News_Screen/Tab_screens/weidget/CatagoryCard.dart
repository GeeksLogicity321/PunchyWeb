import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/NewsTopicsProvider.dart';
import 'package:punchy_web/Prorvider/News_CatagoryProvider.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../constant/constants.dart';
import '../SpecificCatagoryScreen.dart';

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
          if (istopic) {
            context.read<NewsTopicsProvider>().setid(id);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SpecificCatagoryScreen(
                          istopic: istopic,
                        )));
          } else {
            context.read<NewsCatagoryProvider>().SelectCatagory(id);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SpecificCatagoryScreen(
                          istopic: istopic,
                        )));
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
