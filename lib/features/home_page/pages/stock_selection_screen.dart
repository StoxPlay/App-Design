import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:stoxplay/features/home_page/widgets/stock_selection_widget.dart';
import 'package:stoxplay/utils/common/widgets/app_button.dart';
import 'package:stoxplay/utils/common/widgets/common_bottom_navbar.dart';
import 'package:stoxplay/utils/common/widgets/primary_container.dart';
import 'package:stoxplay/utils/common/widgets/text_view.dart';
import 'package:stoxplay/utils/constants/app_assets.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';
import 'package:stoxplay/utils/constants/app_constants.dart';
import 'package:stoxplay/utils/constants/app_strings.dart';

class StockSelectionScreen extends StatelessWidget {
  const StockSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CommonBottomNavbar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
          child: PrimaryContainer(
            child: Padding(
              padding: EdgeInsets.all(8.h),
              child: TextView(
                textAlign: TextAlign.center,
                text: Strings.next.toUpperCase(),
                fontColor: AppColors.purple661F,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            child: Image.asset(AppAssets.lightSplashStrokes, height: 250.h),
          ),
          SafeArea(
            child: Column(
              children: [
                // Header section
                Padding(
                  padding: EdgeInsets.only(
                    top: 50.h,
                    left: 0,
                    right: 0,
                    bottom: 0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        Strings.selectStocks,
                        style: selectStocksStyle,
                        textAlign: TextAlign.center,
                      ),
                      Gap(10.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.pick11StocksFrom30,
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Time Left (09:10:59)',
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(5.h),
                      SizedBox(
                        height: 10.h,
                        child: ListView.builder(
                          itemCount: 11,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 23.w,
                              margin: EdgeInsets.symmetric(horizontal: 3.w),
                              decoration: BoxDecoration(
                                color: AppColors.purple661F,
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            );
                          },
                        ),
                      ),
                      Gap(18.h),
                    ],
                  ),
                ),
                // Stock list
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: ListView.separated(
                      padding: EdgeInsets.only(
                        bottom: 30.h,
                        top: 10.h,
                        left: 15.w,
                        right: 15.w,
                      ),
                      separatorBuilder: (context, index) => Gap(8.h),
                      itemCount: 30,
                      itemBuilder: (context, index) => StockSelectionWidget(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
