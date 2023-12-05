import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:live_cricket_app/SplashScreen.dart';
import 'package:live_cricket_app/constant/themes.dart';
import 'package:live_cricket_app/routes.dart';
import 'package:live_cricket_app/viewmodel/AllHomeInternational.dart';
import 'package:live_cricket_app/viewmodel/AllLiveMatchesProvider.dart';
import 'package:live_cricket_app/viewmodel/AllRecentMatchesprovider.dart';
import 'package:live_cricket_app/viewmodel/AllTopics.dart';
import 'package:live_cricket_app/viewmodel/AllUpcomingMatchessProvider.dart';
import 'package:live_cricket_app/viewmodel/Auth.dart';
import 'package:live_cricket_app/viewmodel/CommentaryListProvider.dart';
import 'package:live_cricket_app/viewmodel/MatchInfoProvider.dart';
import 'package:live_cricket_app/viewmodel/News_CatagoryProvider.dart';
import 'package:live_cricket_app/viewmodel/OversViewModel.dart';
import 'package:live_cricket_app/viewmodel/ScoreCardViewModel.dart';
import 'package:live_cricket_app/viewmodel/SquadsProvider.dart';
import 'package:live_cricket_app/viewmodel/getdataApi.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'viewmodel/SpecificStoryProvider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MultiProvider(
          providers: [
            ChangeNotifierProvider<StoriesDataServices>(
                create: (context) => StoriesDataServices()),
            ChangeNotifierProvider<MatchSchedualDataServices>(
                create: (context) => MatchSchedualDataServices()),
            ChangeNotifierProvider<Auth>(create: (context) => Auth()),
            ChangeNotifierProvider<AllHomeInternationalMatchInfoProvider>(
                create: (context) => AllHomeInternationalMatchInfoProvider()),
            ChangeNotifierProvider<NewsCatagoryProvider>(
                create: (context) => NewsCatagoryProvider()),
            ChangeNotifierProvider<MatchInfoProvider>(
                create: (context) => MatchInfoProvider()),
            ChangeNotifierProvider<CommentaryListProvider>(
                create: (context) => CommentaryListProvider()),
            ChangeNotifierProvider<ScoreCardProvider>(
                create: (context) => ScoreCardProvider()),
            ChangeNotifierProvider<OverInfoProvider>(
                create: (context) => OverInfoProvider()),
            ChangeNotifierProvider<SquadProvider>(
                create: (context) => SquadProvider()),
            ChangeNotifierProvider<AllLiveMatchesProvider>(
                create: (context) => AllLiveMatchesProvider()),
            ChangeNotifierProvider<AllUpcomingMatchesProvider>(
                create: (context) => AllUpcomingMatchesProvider()),
            ChangeNotifierProvider<AllRecentMatchesProvider>(
                create: (context) => AllRecentMatchesProvider()),
            ChangeNotifierProvider<TopicsProvider>(
                create: (context) => TopicsProvider()),
            ChangeNotifierProvider<SpecificStoryProvider>(
                create: (context) => SpecificStoryProvider()),
          ],
          child: MaterialApp(
            theme: CustomTheme().lightTheme,
            debugShowCheckedModeBanner: false,
            initialRoute: SplashScreen.routename,
            routes: namedRoutes,
          ));
    });
  }
}
