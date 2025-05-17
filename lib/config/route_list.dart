import 'package:flutter/cupertino.dart';
import 'package:stoxplay/features/auth/login_page.dart';
import 'package:stoxplay/features/auth/singup_page.dart';
import 'package:stoxplay/features/home_page/pages/contest_details_page.dart';
import 'package:stoxplay/features/home_page/pages/home_page.dart';
import 'package:stoxplay/features/home_page/pages/stock_selection_screen.dart';
import 'package:stoxplay/features/leaderboard_page/pages/leaderboard_page.dart';
import 'package:stoxplay/features/main_navigation/main_navigation_page.dart';
import 'package:stoxplay/features/profile_page/pages/profile_page.dart';
import 'package:stoxplay/features/splash_page/splash_page.dart';
import 'package:stoxplay/features/stats_page/pages/stats_page.dart';
import 'package:stoxplay/utils/constants/app_routes.dart';


class RouteList {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splashPage: (context) => const SplashPage(),
    AppRoutes.loginPage: (context) =>  LoginPage(),
    AppRoutes.signUpPage: (context) =>  SignUpPage(),
    AppRoutes.homePage: (context) =>  HomePage(),
    AppRoutes.mainPage: (context) =>  MainNavigationPage(),
    AppRoutes.contestDetailsPage: (context) =>  ContestDetailsPage(),
    AppRoutes.stockSelectionScreen: (context) =>  StockSelectionScreen(),
    AppRoutes.statsPage: (context) =>  StatsPage(),
    AppRoutes.leaderboardPage: (context) =>  LeaderboardPage(),
    AppRoutes.profilePage: (context) =>  ProfilePage(),
  };
}
