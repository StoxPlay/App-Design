import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoxplay/utils/common/widgets/common_appbar_title.dart';
import 'package:stoxplay/utils/common/widgets/common_button.dart';
import 'package:stoxplay/utils/common/widgets/text_view.dart';
import 'package:stoxplay/utils/constants/app_assets.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';
import 'package:stoxplay/utils/constants/app_constants.dart';
import 'package:stoxplay/utils/constants/app_strings.dart';
import 'package:stoxplay/utils/extensions/extensions.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(child: Icon(Icons.person, size: 20.h)),
            CommonAppbarTitle(),
            Badge(
              backgroundColor: AppColors.purple661F,
              smallSize: 8,
              alignment: Alignment.topLeft,
              child: Image.asset(
                AppAssets.notificationIcon,
                height: 24,
                width: 24,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AppAssets.carouselImage,
              height: 150.h,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 137.h,
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  color: AppColors.blue7E.withOpacity(0.5),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blue7E.withOpacity(0.5),
                    blurRadius: 15,
                    spreadRadius: 1,
                    offset: Offset(0, 0), // Shadow direction: bottom right
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: Strings.indianStockMarketChampionship,
                  ).paddingTop(10.h),
                  Divider(color: AppColors.whiteF9F9),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10.w),
                          TextView(
                            fontSize: 15.sp,
                            fontColor: AppColors.whiteF9F9,
                            fontWeight: FontWeight.bold,
                            text: "title",
                          ),
                        ],
                      ),
                      CommonButton(
                        height: 25.h,
                        width: 70.w,
                        borderRadius: 5.r,
                        title: Strings.join,
                        onTap: () {
                          // Navigator.pushNamed(
                          //     context, RouteList.contestScreen,
                          //     arguments: StaticData.data[index]);
                        },
                      ),
                    ],
                  ),
                  Divider(color: AppColors.whiteF9F9),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextView(
                        text: "Max Win",
                        fontColor: AppColors.whiteF9F9,
                        fontSize: 10.sp,
                      ),
                      Row(
                        children: [
                          TextView(
                            fontColor: AppColors.whiteF9F9,
                            text: Strings.timeLeft,
                            fontSize: 10.sp,
                          ),
                          SizedBox(width: 5.w),
                          TextView(
                            fontColor: AppColors.whiteF9F9,
                            text: '20 Min',
                            fontSize: 10.sp,
                          ),
                        ],
                      ),
                    ],
                  ).paddingBottom(5.h),
                ],
              ).paddingSymmetric(horizontal: 14.w),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2), // Adjust as needed
          border: Border.all(
            color: AppColors.purple661F.withOpacity(0.05),
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
          child: ValueListenableBuilder(
            valueListenable: currentIndex,
            builder: (context, index, _) {
              return SizedBox(
                height: 84.h,
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: navBarList,
                  currentIndex: currentIndex.value,
                  type: BottomNavigationBarType.fixed,
                  onTap: (value) {
                    currentIndex.value = value;
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
