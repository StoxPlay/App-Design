import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Add this for SystemUiOverlayStyle
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoxplay/features/splash_page/splash_page.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light, // Makes status bar icons white
          child: MaterialApp(
            title: 'StoxPlay',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              primaryColor: AppColors.colorPrimary,
              scaffoldBackgroundColor: AppColors.gradientOne,
              colorScheme: ColorScheme.fromSeed(
                seedColor: AppColors.colorPrimary,
                primary: AppColors.colorPrimary,
                secondary: AppColors.colorPrimary,
              ),
              fontFamily: 'Sofia Sans',
              appBarTheme: AppBarTheme(
                backgroundColor: AppColors.colorPrimary,
                foregroundColor: Colors.white,
                elevation: 0,
                systemOverlayStyle: SystemUiOverlayStyle.light, // For AppBar status bar
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.black,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: AppColors.colorPrimary,
              ),
            ),
            home: const SplashPage(),
          ),
        );
      },
    );
  }
}
