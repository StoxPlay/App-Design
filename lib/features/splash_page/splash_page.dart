import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoxplay/config/route_list.dart';
import 'package:stoxplay/utils/common/widgets/app_button.dart';
import 'package:stoxplay/utils/common/widgets/common_stoxplay_icon.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';
import 'package:stoxplay/utils/constants/app_assets.dart';
import 'package:stoxplay/utils/constants/app_routes.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              bottom: 200,
              child: Image.asset(AppAssets.splashStrokes, fit: BoxFit.fitWidth),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                SizedBox(height: 200.h),
                Center(
                  child: Column(
                    children: [CommonStoxplayIcon(), CommonStoxplayText()],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 50.h,
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: AppButton(
                    text: Strings.getStarted,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.loginPage);
                    },
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
