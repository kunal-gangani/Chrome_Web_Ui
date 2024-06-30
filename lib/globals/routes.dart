import 'package:flutter/material.dart';
import 'package:web_ui/views/SetProfileImage/set_profile_page.dart';
import 'package:web_ui/views/SignInPage/sign_in_page.dart';

class Routes {
  static String setProfilePage = '/';
  static String signInPage = 'SignInPage';

  static Map<String, WidgetBuilder> myRoutes = {
    setProfilePage: (context) => const SetProfilePage(),
    signInPage: (context) => const SignInPage(),
  };
}
