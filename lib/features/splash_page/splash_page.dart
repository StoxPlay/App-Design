import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoxplay/features/auth_page/login_page/login_page.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';
import 'package:stoxplay/utils/constants/app_assets.dart';
import 'package:stoxplay/utils/constants/app_strings.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              bottom: 200,
              child: Image.asset(
                AppAssets.splashStrokes,
                fit: BoxFit.fitWidth,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                SizedBox(height: 200.h),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        AppAssets.appIcon,
                        width: 100.w,
                        height: 110.h,
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        Strings.stoxplay,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 45.sp,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 50.h,
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: Text(
                            Strings.getStarted,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
