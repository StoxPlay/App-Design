import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:stoxplay/models/contest_model.dart';
import 'package:stoxplay/utils/common/widgets/app_button.dart';
import 'package:stoxplay/utils/common/widgets/text_view.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';
import 'package:stoxplay/utils/constants/app_routes.dart';
import 'package:stoxplay/utils/constants/app_strings.dart';
import 'package:stoxplay/utils/extensions/extensions.dart';

class ContestWidget extends StatelessWidget {
  final ContestModel data;

  ContestWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.blue7E.withOpacity(0.1), width: 2),
        boxShadow: [
          BoxShadow(
            color: AppColors.blue7E.withOpacity(0.5),
            blurRadius: 8,
            spreadRadius: 0.5,
            offset: Offset(0, 0), // Shadow direction: bottom right
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextView(
            text: Strings.indianStockMarketChampionship,
            fontSize: 16.sp,
          ).paddingSymmetric(vertical: 5.h),
          Container(
            width: MediaQuery.of(context).size.width.w,
            height: 1,
            color: AppColors.black.withOpacity(0.2),
          ),
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(data.image, height: 60.h, width: 60.w),
                  SizedBox(width: 10.w),
                  TextView(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    text: data.title,
                  ),
                ],
              ),
              AppButton(
                width: 65.w,
                borderRadius: 5.r,
                fontSize: 12.sp,
                height: 25.h,
                text: Strings.join,
                fontWeight: FontWeight.w800,
                textColor: AppColors.white,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.contestDetailsPage,
                    arguments: data,
                  );
                },
              ),
            ],
          ),
          Gap(5.h),
          Container(
            width: MediaQuery.of(context).size.width.w,
            height: 1,
            color: AppColors.black.withOpacity(0.2),
          ),
          Gap(5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextView(
                text: "Max ${data.price} Win",
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
              ),
              // Row(
              //   children: [
              //     TextView(
              //       fontColor: AppColors.whiteF9F9,
              //       text: Strings.timeLeft,
              //       fontSize: 10.sp,
              //     ),
              //     SizedBox(width: 5.w),
              //     TextView(
              //       fontColor: AppColors.whiteF9F9,
              //       text: '20 Min',
              //       fontSize: 10.sp,
              //     ),
              //   ],
              // ),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 14.w),
    );
  }
}
