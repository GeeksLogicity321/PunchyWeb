import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/constants.dart';

class Squads extends StatelessWidget {
  const Squads({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: kPrimaryColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Text(
                'team 1',
                style: const TextStyle(
                    color: kSecondaryColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 40.w,
              ),
              Text(
                'team 2',
                style: const TextStyle(
                    color: kSecondaryColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(),
            ],
          ),
        ),
        const Text('Squad'),
        Expanded(
          child: ListView.builder(
            itemCount: 11,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 0.25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 7.h,
                      width: 49.5.w,
                      child: ListTile(
                        onTap: () {},
                        tileColor: kSecondaryColor,
                        // leading: ClipOval(
                        //   child: Image.network(
                        //     ApiConstants.image +
                        //         currentIndexSquad.faceImageId
                        //             .toString(),
                        //     width: 10.w,
                        //     height: 10.w,
                        //   ),
                        // ),
                        title: Text(
                          'squad',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        subtitle: Text(
                          'squad2',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.grey, fontSize: 7.sp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                      width: 49.5.w,
                      child: ListTile(
                        onTap: () {},
                        tileColor: kSecondaryColor,
                        // leading: ClipOval(
                        //   child: Image.network(
                        //     ApiConstants.image +
                        //         currentIndexSquad2.faceImageId
                        //             .toString(),
                        //     width: 10.w,
                        //     height: 10.w,
                        //   ),
                        // ),
                        title: Text(
                          'currentIndexSquad2',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        subtitle: Text(
                          'currentIndexSquad2',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.grey, fontSize: 7.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
