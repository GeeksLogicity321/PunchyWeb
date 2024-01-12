import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punchy_web/Prorvider/AllliveMatchesProvider.dart';
import 'package:punchy_web/Screen/FrontPage.dart';
import 'package:sizer/sizer.dart';

import 'Prorvider/HomepageMachesProvider.dart';
import 'Prorvider/StoriesProvider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => AllHomeInternationalMatchInfoProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => AllLiveMatchesProvider(),
          ),
          ChangeNotifierProvider(create: (context) => StoriesProvider())
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: FrontPage(),
        ),
      );
    });
  }
}
