import 'package:flutter/material.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreen.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreens/MatchPage/More_Screen/About/AboutPunchy.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreens/MatchPage/More_Screen/About/AboutUs.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreens/MatchPage/More_Screen/About/Copyrights.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreens/MatchPage/More_Screen/About/PrivacyPolicy.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreens/MatchPage/More_Screen/About/TermsOfUse.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreens/MatchPage/More_Screen/Dummy_Screen.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreens/MatchPage/News_Screen/Tab_screens/SpecificCatagoryScreen.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreens/MatchPage/News_Screen/Tab_screens/SpecificTopicScreen.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreens/MatchPage/home_screen/SpecificStoryScreen.dart';
import 'package:live_cricket_app/HomePage/BottomNavigationBarScreens/MatchPage/home_screen/match%20card/MatchstatusScreen.dart';
import 'package:live_cricket_app/LoginPage/LoginScreen.dart';
import 'package:live_cricket_app/SignUpPage/SignUpScreen.dart';
import 'package:live_cricket_app/SplashScreen.dart';

Map<String, WidgetBuilder> namedRoutes = {
  // '/': (context) => const SplashScreen(),
  BottomNavigationBarScreen.routenName: (context) =>
      const BottomNavigationBarScreen(),
  SplashScreen.routename: (context) => const SplashScreen(),
  SignUpScreen.pageName: (context) => const SignUpScreen(),
  LoginScreen.pageName: (context) => const LoginScreen(),
  Dummy_Screen.routeName: (context) => const Dummy_Screen(),
  MatchStatusScreen.routeName: (context) => const MatchStatusScreen(),
  SpecificCatagoryScreen.routename: (context) => const SpecificCatagoryScreen(),
  SpecificTopicScreen.routename: (context) => const SpecificTopicScreen(),
  TermsOfUseScreen.routeName: (context) => const TermsOfUseScreen(),
  CopyRightScreen.routeName: (context) => const CopyRightScreen(),
  PrivacyPolicyScreen.routeName: (context) => const PrivacyPolicyScreen(),
  AboutUsScreen.routeName: (context) => const AboutUsScreen(),
  AboutScreen.routeName: (context) => const AboutScreen(),
  SpecificStoryScreen.routename: (context) => const SpecificStoryScreen(),
};
