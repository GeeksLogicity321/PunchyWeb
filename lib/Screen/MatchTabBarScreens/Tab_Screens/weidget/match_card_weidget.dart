import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../../../../constant/constants.dart';
import '../../../../Models/LiveMatchesModel.dart';
import '../../../../Prorvider/SpecificMatchDetailProvider.dart';
import '../../../../constant/api_constants.dart';
import '../../../MatchScreen/MatchDetailsScreen.dart';

class MatchCardWeidget extends StatelessWidget {
  const MatchCardWeidget({super.key, required this.match});

  final Matches match;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 600),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {
            // Provider.of<ScoreCardProvider>(context, listen: false).setSelected(
            //     match.matchInfo!.matchId!,
            //     match.matchInfo!.team1!.teamId!,
            //     match.matchInfo!.team2!.teamId!);
            // Provider.of<ScoreCardProvider>(context, listen: false)
            // .fetchScoreCardWithRetry();
            context
                .read<SpecificMatchDetailProvider>()
                .setSelected(match.matchInfo!.matchId!);

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MatchStatusScreen()));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  match.matchInfo!.matchDesc!,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                kHeightSmallSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CachedNetworkImage(
                      imageUrl: ApiConstants.image +
                          match.matchInfo!.team1!.imageId!.toString(),
                      placeholder: (context, url) => SizedBox(
                          width: 7.w,
                          height: 7.w,
                          child: const CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.flag_circle_outlined),
                      width: 7.w,
                    ),
                    match.matchScore != null &&
                            match.matchScore!.team1Score != null
                        ? Text(
                            '${match.matchScore!.team1Score!.inngs1!.runs}-${match.matchScore!.team1Score!.inngs1!.wickets} (${match.matchScore!.team1Score!.inngs1!.overs})',
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        : SizedBox(),
                    const SizedBox()
                  ],
                ),
                kHeightSmallSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CachedNetworkImage(
                      imageUrl: ApiConstants.image +
                          match.matchInfo!.team2!.imageId!.toString(),
                      placeholder: (context, url) => SizedBox(
                          width: 7.w,
                          height: 7.w,
                          child: const CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.flag_circle_outlined),
                      width: 7.w,
                    ),
                    // Text(
                    //   'teamSName!',
                    //   style: Theme.of(context).textTheme.bodyMedium,
                    // ),
                    match.matchScore != null &&
                            match.matchScore!.team2Score != null &&
                            match.matchScore!.team2Score!.inngs1 != null
                        ? Text(
                            '${match.matchScore!.team2Score!.inngs1!.runs}-${match.matchScore!.team2Score!.inngs1!.wickets ?? 0} (${match.matchScore!.team2Score!.inngs1!.overs})',
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        : SizedBox(),
                    const SizedBox()
                  ],
                ),
                kHeightSmallSizedBox,
                Text(
                  match.matchInfo!.status ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
