import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../../../../../../../constant/constants.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget(
      {super.key, this.batter, this.b, this.fours, this.r, this.six, this.sr});

  final String? batter;
  final int? r;
  final int? b;
  final int? fours;
  final int? six;
  final num? sr;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Text(
                          batter ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.blue),
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          r.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          b.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          fours.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          six.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          sr.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        )),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
