import 'package:flutter/cupertino.dart';
import 'package:stoxplay/features/auth/login_page.dart';
import 'package:stoxplay/features/auth/singup_page.dart';
import 'package:stoxplay/features/home_page/pages/contest_details_page.dart';
import 'package:stoxplay/features/home_page/pages/home_page.dart';
import 'package:stoxplay/features/splash_page/splash_page.dart';
import 'package:stoxplay/utils/constants/app_routes.dart';

class RouteList {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splashPage: (context) => const SplashPage(),
    AppRoutes.loginPage: (context) =>  LoginPage(),
    AppRoutes.signUpPage: (context) =>  SignUpPage(),
    AppRoutes.homePage: (context) =>  HomePage(),
    AppRoutes.contestDetailsPage: (context) =>  ContestDetailsPage(),
  };
}
