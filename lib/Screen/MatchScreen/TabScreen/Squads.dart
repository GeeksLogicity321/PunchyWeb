import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/SpecificMatchDetailProvider.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/api_constants.dart';
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
              Consumer<SpecificMatchDetailProvider>(
                  builder: (_, specificMatchDetailProvider, __) {
                return specificMatchDetailProvider.matchinfoIsLoading
                    ? const SizedBox()
                    : Text(
                        specificMatchDetailProvider
                            .matchinfo!.matchInfo!.team1!.name!,
                        style: const TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold),
                      );
              }),
              SizedBox(
                width: 40.w,
              ),
              Consumer<SpecificMatchDetailProvider>(
                  builder: (_, specificMatchDetailProvider, __) {
                return specificMatchDetailProvider.matchinfoIsLoading
                    ? const SizedBox()
                    : Text(
                        specificMatchDetailProvider
                            .matchinfo!.matchInfo!.team2!.name!,
                        style: const TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold),
                      );
              }),
              const SizedBox(),
            ],
          ),
        ),
        const Text('Squad'),
        Expanded(
          child: Consumer<SpecificMatchDetailProvider>(
              builder: (_, specificMatchDetailProvider, __) {
            return specificMatchDetailProvider.matchinfoIsLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.25.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: specificMatchDetailProvider.matchinfo!
                                .matchInfo!.team1!.playerDetails!.length,
                            itemBuilder: (context, index) {
                              final team1 = specificMatchDetailProvider
                                  .matchinfo!
                                  .matchInfo!
                                  .team1!
                                  .playerDetails![index];
                              return SizedBox(
                                height: 7.h,
                                child: ListTile(
                                  onTap: () {},
                                  tileColor: kSecondaryColor,
                                  leading: ClipOval(
                                    child: Image.network(
                                      ApiConstants.image +
                                          team1.faceImageId.toString(),
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  title: Text(
                                    team1.fullName ?? '',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  subtitle: Text(
                                    team1.role ?? '',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: Colors.grey, fontSize: 7),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: specificMatchDetailProvider.matchinfo!
                                .matchInfo!.team2!.playerDetails!.length,
                            itemBuilder: (context, index) {
                              final team2 = specificMatchDetailProvider
                                  .matchinfo!
                                  .matchInfo!
                                  .team2!
                                  .playerDetails![index];
                              return SizedBox(
                                height: 7.h,
                                child: ListTile(
                                  onTap: () {},
                                  tileColor: kSecondaryColor,
                                  leading: ClipOval(
                                    child: Image.network(
                                      ApiConstants.image +
                                          team2.faceImageId.toString(),
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  title: Text(
                                    team2.fullName ?? '',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  subtitle: Text(
                                    team2.role ?? '',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: Colors.grey, fontSize: 7),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
          }),
        )
      ],
    );
  }
}
