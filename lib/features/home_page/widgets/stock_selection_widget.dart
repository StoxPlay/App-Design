import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoxplay/utils/common/widgets/text_view.dart';
import 'package:stoxplay/utils/constants/app_assets.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';

class StockSelectionWidget extends StatelessWidget {
  const StockSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.blue7E.withOpacity(0.3),
                offset: const Offset(0, 0),
                blurRadius: 12,
                spreadRadius: 1,
              ),
            ],
            border: Border.all(color: AppColors.blue7E.withOpacity(0.5)),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(12.w, 5.h, 12.w, 5.h),
            margin: EdgeInsets.all(3.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.black.withOpacity(0.1)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AppAssets.appIcon, height: 35.h, width: 35.w),
                    SizedBox(width: 20.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 30.h),
                        TextView(
                          text: '₹1,629.40 (-1.05%) ',
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Row(
                    spacing: 7.w,
                    children: [
                      CircularIconWidget(
                        borderColor: AppColors.green38EE,
                        icon: Icons.arrow_upward,
                      ),
                      CircularIconWidget(
                        borderColor: AppColors.black9A9A,
                        icon: Icons.more_horiz,
                        shadowBlurRadius: 5,
                      ),
                      CircularIconWidget(
                        borderColor: AppColors.red,
                        icon: Icons.arrow_downward,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 75.w,
          child: Container(
            padding: EdgeInsets.only(
              top: 10.h,
              left: 6.w,
              right: 6.w,
              bottom: 6.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6.r),
                bottomRight: Radius.circular(6.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x66000000), // #00000040 in ARGB format
                  offset: Offset(0, 1), // Horizontal and vertical displacement
                  blurRadius: 7.1, // Shadow blur radius
                ),
              ],
            ),
            child: TextView(
              text: 'Stock Name',
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
          ),
        ),
      ],
    );
  }
}

class CircularIconWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? shadowBlurRadius;
  final IconData? icon;
  final double? iconSize;

  const CircularIconWidget({
    super.key,
    this.height,
    this.width,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.borderWidth = 1.0,
    this.shadowBlurRadius = 5.0,
    this.icon,
    this.iconSize = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 25.h,
      width: width ?? 25.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor!, width: borderWidth!),
        boxShadow: [
          BoxShadow(
            color: borderColor!.withOpacity(0.6),
            offset: const Offset(0, 0),
            blurRadius: shadowBlurRadius!,
          ),
        ],
      ),
      child: Center(
        child: Icon(icon ?? Icons.circle, color: borderColor, size: iconSize),
      ),
    );
  }
}
