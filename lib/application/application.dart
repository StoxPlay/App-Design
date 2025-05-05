import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoxplay/main.dart';
import 'package:stoxplay/utils/common/widgets/fade_page_route_builder.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';
import 'package:stoxplay/utils/constants/app_strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: Strings.stoxplay,
        scaffoldMessengerKey: snackBarKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.colorPrimary),
          useMaterial3: true,
          datePickerTheme: DatePickerThemeData(
            headerBackgroundColor: AppColors.gradientTwo,
          ),
        ),
        // onGenerateRoute: (RouteSettings settings) {
        //   final routes = Routes.getRoutes;
        //   WidgetBuilder? builder = routes[settings.name];
        //   return FadePageRouteBuilder(builder: builder, settings: settings);
        //   return null;
        // },
        routes: {},
        home: Scaffold(), // Use the SplashScreen widget here
      ),
    );
  }
}
