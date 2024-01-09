import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:punchy_web/Screen/FrontPage.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FrontPage(),
      );
    });
  }
}
