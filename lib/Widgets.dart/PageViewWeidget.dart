import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/constant/api_constants.dart';

import '../Prorvider/HomepageMachesProvider.dart';
import '../Screen/MatchScreen/MatchDetailsScreen.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: StreamBuilder(
          stream: Stream.periodic(const Duration(seconds: 60), (i) => i),
          builder: (context, snapshot) {
            context
                .read<AllHomeInternationalMatchInfoProvider>()
                .fetchMatchesWithRetry();
            final allHomematchsInfoProvider =
                Provider.of<AllHomeInternationalMatchInfoProvider>(context);
            if (allHomematchsInfoProvider.matches.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allHomematchsInfoProvider.matches.length < 6
                    ? allHomematchsInfoProvider.matches.length
                    : 6,
                controller: PageController(viewportFraction: 0.2),
                itemBuilder: (context, index) {
                  final matchinfoOfCurrentIndex =
                      allHomematchsInfoProvider.matches[index];

                  return Card(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MatchStatusScreen()));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 5),
                            child: Text(
                              '${matchinfoOfCurrentIndex.matchInfo!.matchDesc!}: ${matchinfoOfCurrentIndex.matchInfo!.seriesName!}',
                              style: const TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 13,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 5),
                            child: Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: ApiConstants.image +
                                      matchinfoOfCurrentIndex
                                          .matchInfo!.team1!.imageId
                                          .toString(),
                                  placeholder: (context, url) => const Center(
                                      child: CircularProgressIndicator()),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error_outline),
                                  width: 40,
                                  // height: 4,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                      matchinfoOfCurrentIndex
                                          .matchInfo!.team1!.teamSName!,
                                      style: const TextStyle(
                                          fontSize: 13, color: Colors.black)),
                                ),
                                // SizedBox(
                                //   width: 8.w,
                                // ),
                                matchinfoOfCurrentIndex.matchScore != null &&
                                        matchinfoOfCurrentIndex
                                                .matchScore!.team1Score !=
                                            null
                                    ? Expanded(
                                        flex: 2,
                                        child: Text(
                                            '${matchinfoOfCurrentIndex.matchScore!.team1Score!.inngs1!.runs.toString()}-${matchinfoOfCurrentIndex.matchScore!.team1Score!.inngs1!.wickets ?? 0} (${matchinfoOfCurrentIndex.matchScore!.team1Score!.inngs1!.overs!})',
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Colors.black)),
                                      )
                                    : const Spacer()
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 5),
                            child: Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: ApiConstants.image +
                                      matchinfoOfCurrentIndex
                                          .matchInfo!.team2!.imageId
                                          .toString(),
                                  placeholder: (context, url) => const Center(
                                      child: CircularProgressIndicator()),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error_outline),
                                  width: 40,
                                  // height: 4,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                      matchinfoOfCurrentIndex
                                          .matchInfo!.team2!.teamSName!,
                                      style: const TextStyle(
                                          fontSize: 13, color: Colors.black)),
                                ),
                                // SizedBox(
                                //   width: 8.w,
                                // ),
                                matchinfoOfCurrentIndex.matchScore != null &&
                                        matchinfoOfCurrentIndex
                                                .matchScore!.team2Score !=
                                            null
                                    ? Expanded(
                                        flex: 2,
                                        child: Text(
                                            '${matchinfoOfCurrentIndex.matchScore!.team2Score!.inngs1!.runs.toString()}-${matchinfoOfCurrentIndex.matchScore!.team2Score!.inngs1!.wickets ?? 0} (${matchinfoOfCurrentIndex.matchScore!.team2Score!.inngs1!.overs!})',
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Colors.black)),
                                      )
                                    : const Spacer()
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 5),
                            child: Text(
                              matchinfoOfCurrentIndex.matchInfo!.status ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.red),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Color(0xFFE2E0E0),
                            ),
                            height: 40,
                            width: double.infinity,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text('SCHEDULE',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 13,
                                        color: Colors.black)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}
