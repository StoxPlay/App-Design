import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:stoxplay/models/contest_model.dart';
import 'package:stoxplay/utils/common/widgets/app_button.dart';
import 'package:stoxplay/utils/common/widgets/common_appbar_title.dart';
import 'package:stoxplay/utils/common/widgets/text_view.dart';
import 'package:stoxplay/utils/constants/app_assets.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';
import 'package:stoxplay/utils/constants/app_strings.dart';
import 'package:stoxplay/utils/extensions/extensions.dart';

class ContestDetailsPage extends StatelessWidget {
  const ContestDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as ContestModel;
    return Scaffold(
      appBar: AppBar(
        title: CommonAppbarTitle(),
        centerTitle: true,
        leadingWidth: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: AppColors.black.withOpacity(0.25)),
            Text(
              Strings.indianStockMarketChampionship,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
            ),
            Gap(10.h),
            Image.asset(data.image, height: 100.h, width: 100.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.stoxplayCoin, height: 35.h, width: 35.w),
                Gap(5.w),
                Text('1700'),
              ],
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Positioned.fill(child: Divider(color: AppColors.black)),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        color: AppColors.white,
                        child: TextView(
                          text: data.title,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ).paddingSymmetric(horizontal: 10.w),
                      ),
                    ),
                  ],
                ),
              ],
            ).paddingSymmetric(horizontal: 24.w),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: AppColors.blue7E),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextView(
                            text: 'Prize Pool',
                            fontSize: 14.sp,
                            fontColor: AppColors.black,
                          ),
                          Row(
                            children: [
                              // Image.asset('assets/images/exchange_icon.png'),
                              SizedBox(width: 5.w),
                              TextView(
                                text: 'Flexible',
                                fontColor: AppColors.black6666,
                                fontSize: 12.sp,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextView(
                            text: "₹${data.contestPriceList[0].prizePool}",
                            fontSize: 18.sp,
                            fontColor: AppColors.black,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigator.pushNamed(
                              //     context, RouteList.stockSelectionScreen,
                              //     arguments: args);
                            },
                            child: AppButton(
                              width: 75.w,
                              height: 28.h,
                              fontSize: 13.sp,
                              text:
                                  "₹${data.contestPriceList.first.contestPrice}",
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 5.0,
                        color: AppColors.black.withOpacity(0.6),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextView(
                            text: "10,000 spots left",
                            fontColor: AppColors.black,
                            fontSize: 10.sp,
                          ),
                          TextView(
                            text: "${data.contestPriceList.first.spots} spots",
                            fontColor: AppColors.black,
                            fontSize: 10.sp,
                          ),
                        ],
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 14.w, vertical: 5.h),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteDFE0,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                // Image.asset(
                                //   'assets/images/medal_icon.png',
                                //   color: AppColors.color666666,
                                // ),
                                SizedBox(width: 5.w),
                                TextView(
                                  text: "50k",
                                  fontColor: AppColors.black6666,
                                  fontSize: 12.sp,
                                ),
                              ],
                            ),
                            SizedBox(width: 20.w),
                            Row(
                              children: [
                                // Image.asset(
                                //   'assets/images/cup_icon.png',
                                //   color: AppColors.color666666,
                                // ),
                                SizedBox(width: 5.w),
                                TextView(
                                  text: "55%",
                                  fontColor: AppColors.black6666,
                                  fontSize: 12.sp,
                                ),
                              ],
                            ),
                            SizedBox(width: 20.w),
                            Row(
                              children: [
                                // Image.asset(
                                //   'assets/images/m_icon.png',
                                //   color: AppColors.color666666,
                                // ),
                                SizedBox(width: 5.w),
                                TextView(
                                  text: "10",
                                  fontColor: AppColors.black6666,
                                  fontSize: 12.sp,
                                ),
                              ],
                            ),
                          ],
                        ),
                        TextView(
                          text: "Start @9:00am",
                          fontColor: AppColors.black6666,
                          fontSize: 12.sp,
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 14.w),
                  ),
                ],
              ),
            ).paddingSymmetric(horizontal: 5.w, vertical: 5.h),
          ],
        ),
      ),
    );
  }
}
