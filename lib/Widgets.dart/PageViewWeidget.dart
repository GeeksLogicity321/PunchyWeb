import 'dart:ui';

import 'package:flutter/material.dart';

import '../Screen/MatchScreen/MatchDetailsScreen.dart';

class pageViewWidget extends StatelessWidget {
  const pageViewWidget({
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
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.2),
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                      'match on dec: Australia won by 20 runs',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                    child: Row(
                      children: [
                        // CachedNetworkImage(
                        //   imageUrl: ApiConstants.image +
                        //       match.matchInfo!.team1!.imageId.toString(),
                        //   placeholder: (context, url) =>
                        //       CircularProgressIndicator(),
                        //   errorWidget: (context, url, error) =>
                        //       const Icon(Icons.error_outline),
                        //   width: 7.w,
                        //   height: 4.w,
                        // ),

                        Text('NEZ',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Colors.black)),

                        Text('300-5 (40.6)',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Colors.black))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 5),
                    child: Row(
                      children: [
                        // CachedNetworkImage(
                        //   imageUrl: ApiConstants.image +
                        //       match.matchInfo!.team2!.imageId.toString(),
                        //   placeholder: (context, url) =>
                        //       Center(child: const CircularProgressIndicator()),
                        //   errorWidget: (context, url, error) =>
                        //       const Icon(Icons.error_outline),
                        //   width: 7.w,
                        //   height: 4.w,
                        // ),

                        Text('NEZ-${0}',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Colors.black)),

                        Text('PAK-${0}',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Colors.black))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 5),
                    child: Text(
                      'match.matchInfo!.status ??',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w300, color: Colors.red),
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
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
                        child: Text('SCHEDULE',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 7,
                                color: Colors.black)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
