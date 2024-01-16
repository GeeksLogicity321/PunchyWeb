import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../Prorvider/SpecificMatchDetailProvider.dart';
import '../../../Utills/ConvertTime.dart';
import '../../../constant/constants.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ListTile(
          //   onTap: () {},
          //   title: const Text('SQUADS'),
          //   trailing: Icon(Icons.arrow_forward_ios_outlined),
          // ),
          Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              width: double.infinity,
              color: const Color.fromARGB(66, 158, 158, 158),
              child: const Text(
                'INFO',
                style: TextStyle(fontSize: 15, color: Colors.grey),
                textAlign: TextAlign.center,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Match',
                        style: Theme.of(context).textTheme.bodySmall!),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('Series',
                        style: Theme.of(context).textTheme.bodySmall!),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('Date', style: Theme.of(context).textTheme.bodySmall!),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('Time', style: Theme.of(context).textTheme.bodySmall!),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('Toss', style: Theme.of(context).textTheme.bodySmall!),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('Venue',
                        style: Theme.of(context).textTheme.bodySmall!),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('Umpires',
                        style: Theme.of(context).textTheme.bodySmall!),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('3Rd Umpires',
                        style: Theme.of(context).textTheme.bodySmall!),
                  ],
                ),
              ),
              Consumer<SpecificMatchDetailProvider>(
                  builder: (_, matchInfoProvider, __) {
                return matchInfoProvider.matchinfoIsLoading
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // match tag line
                          Text(
                            matchInfoProvider
                                    .matchinfo!.matchInfo!.matchDescription ??
                                '',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          // series name
                          Text(
                            matchInfoProvider
                                    .matchinfo!.matchInfo!.series!.name ??
                                '',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          // start date
                          Text(
                            EpochToDate(matchInfoProvider
                                .matchinfo!.matchInfo!.matchStartTimestamp!),
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          // match time
                          Text(
                            'formattedtime',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          // match short name
                          Text(
                            '${matchInfoProvider.matchinfo!.matchInfo!.tossResults!.tossWinnerName ?? ''} won the toss',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          // match venue
                          Text(
                            matchInfoProvider.matchinfo!.venueInfo!.ground!,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          // umpire1
                          Text(
                            matchInfoProvider
                                    .matchinfo!.matchInfo!.umpire1!.name ??
                                '',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          // umpire 3
                          Text(
                            matchInfoProvider
                                    .matchinfo!.matchInfo!.umpire3!.name ??
                                '',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.grey),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      );
              }),
              const SizedBox()
            ],
          ),
          Container(
              padding: EdgeInsets.symmetric(
                vertical: 1.h,
              ),
              width: double.infinity,
              color: const Color.fromARGB(66, 158, 158, 158),
              child: const Text(
                'VENUE GUIDE',
                style: TextStyle(fontSize: 15, color: Colors.grey),
                textAlign: TextAlign.center,
              )),
          Container(
            color: kSecondaryColor,
            // width: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Stadium',
                          style: Theme.of(context).textTheme.bodySmall!),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text('City',
                          style: Theme.of(context).textTheme.bodySmall!),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text('Capacity',
                          style: Theme.of(context).textTheme.bodySmall!),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text('Ends',
                          style: Theme.of(context).textTheme.bodySmall!),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text('Toss',
                          style: Theme.of(context).textTheme.bodySmall!),
                      SizedBox(
                        height: 1.h,
                      ),
                    ],
                  ),
                ),
                Consumer<SpecificMatchDetailProvider>(
                    builder: (_, matchInfoProvider, __) {
                  return matchInfoProvider.matchinfoIsLoading
                      ? Center(child: CircularProgressIndicator())
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // stadium
                            Text(
                              matchInfoProvider.matchinfo!.venueInfo!.knownAs ??
                                  'unknown',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.grey),
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            // city
                            Text(
                              matchInfoProvider.matchinfo!.venueInfo!.city!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.grey),
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            // capacity
                            Text(
                              matchInfoProvider
                                      .matchinfo!.venueInfo!.capacity ??
                                  'unknown',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.grey),
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            // Ends

                            Text(
                              EpochToDate(matchInfoProvider.matchinfo!
                                  .matchInfo!.matchCompleteTimestamp!),
                              // allinfo.matchInfo!.series!.endDate == null
                              //     ? 'Not assigned'
                              //     : allinfo.matchInfo!.series!.endDate
                              //         .toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.grey),
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            // toss
                            Text(
                              matchInfoProvider.matchinfo!.matchInfo!
                                      .tossResults!.tossWinnerName ??
                                  'Toss didnt take place',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.grey),
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            // Hosts to
                          ],
                        );
                }),
                const SizedBox()
              ],
            ),
          )
        ],
      ),
    );
  }
}
