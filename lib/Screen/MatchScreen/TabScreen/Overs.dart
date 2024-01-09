import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/constants.dart';

class Overs extends StatelessWidget {
  const Overs({super.key});

  int getLength(String? over) {
    if (over!.isNotEmpty) {
      final overWithoutSpaces = over.replaceAll(' ', '');
      final lengthosovers = overWithoutSpaces.length;
      print(overWithoutSpaces);
      return lengthosovers;
    } else {
      return 0;
    }
  }

  List<String> extractAlphabets(String? input) {
    final overWithoutSpaces = input?.replaceAll(' ', '');

    List<String> alphabets = [];
    if (overWithoutSpaces != null) {
      for (int i = 0; i < overWithoutSpaces.length; i++) {
        // Check if the character is an alphabet
        alphabets.add(overWithoutSpaces[i]);
      }
    }
    return alphabets;
  }

  MaterialColor extractColor(String? input) {
    MaterialColor color;
    if (input == 'W') {
      color = Colors.red;
    } else if (input == '0') {
      color = Colors.grey;
    } else if (input == '1') {
      color = Colors.blue;
    } else if (input == '3') {
      color = Colors.purple;
    } else if (input == '4') {
      color = Colors.amber;
    } else if (input == 'L') {
      color = Colors.green;
    } else {
      color = Colors.orange;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          color: kSecondaryColor,
          height: 15.h,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('battingteaminfo'),
                  Text(
                    '${'battingteaminfo'} - battingteaminfo (battingteaminfo)',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'customStatus',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('CRR'),
                  Text('currentRunRate',
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  // final currentIndexSquad =
                  //     squadprovider.squads.players!.playingXI![index];
                  return Padding(
                    padding: EdgeInsets.only(top: 0.5.h),
                    child: Container(
                      padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 2.h),
                      height: 10.h,
                      width: double.infinity,
                      color: kSecondaryColor,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Ov ${'overNum'}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: kPrimaryColor),
                              ),
                              Text(
                                ' runs',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'bowlNames'
                                  'to'
                                  'batStrikerNames'
                                  'batStrikerNames',
                                  style: Theme.of(context).textTheme.bodySmall,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 4.h,
                                  width: 80.w,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: getLength('w 6'),
                                      itemBuilder: (context, index) {
                                        final alphabetlist =
                                            extractAlphabets('W 6');
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2.w),
                                          child: CircleAvatar(
                                            radius: 3.w,
                                            backgroundColor: extractColor(
                                                alphabetlist[index]),
                                            child: Text(
                                              alphabetlist[index],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        );
                                      }),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }))
      ],
    );
  }
}
