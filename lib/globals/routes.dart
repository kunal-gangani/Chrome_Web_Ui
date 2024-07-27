import 'package:flutter/material.dart';
import 'package:web_ui/views/HomePage/home_page.dart';
import 'package:web_ui/views/SetPassword/set_password.dart';
import 'package:web_ui/views/SetProfileImage/set_profile_page.dart';
import 'package:web_ui/views/SignInPage/sign_in_page.dart';
import 'package:web_ui/views/TurnOnSync/turn_on_sync.dart';
import 'package:web_ui/views/TwoStepVerification/two_step.dart';

class Routes {
  static String setProfilePage = '/';
  static String signInPage = 'SignInPage';
  static String setPassword = 'SetPassword';
  static String twoStepVerification = 'TwoStepVerification';
  static String turnOnSync = 'TurnOnSync';
  static String homePage = 'HomePage';

  static Map<String, WidgetBuilder> myRoutes = {
    setProfilePage: (context) => const SetProfilePage(),
    signInPage: (context) => const SignInPage(),
    setPassword: (context) => const SetPassword(),
    twoStepVerification: (context) => const TwoStepVerification(),
    turnOnSync:(context) => const TurnOnSync(),
    homePage:(context) => const HomePage(),
  };
}
