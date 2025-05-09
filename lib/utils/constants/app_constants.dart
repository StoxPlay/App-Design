import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoxplay/utils/common/widgets/glow_icon.dart';
import 'package:stoxplay/utils/constants/app_assets.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';

List<BottomNavigationBarItem> navBarList = [
  BottomNavigationBarItem(
    icon: Image.asset(
      AppAssets.monitorIcon,
      height: 24.h,
      width: 24.w,
      color: AppColors.black,
    ),
    activeIcon: GlowIcon(
      glowColor: AppColors.purple661F,
      child: Image.asset(
        AppAssets.monitorIcon,
        height: 24.h,
        width: 24.w,
        color: AppColors.purple661F,
      ),
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: Image.asset(AppAssets.monitorIcon, height: 24.h, width: 24.w),
    activeIcon: GlowIcon(
      glowColor: AppColors.purple661F,
      child: Image.asset(
        AppAssets.monitorIcon,
        height: 24.h,
        width: 24.w,
        color: AppColors.purple661F,
      ),
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: Image.asset(AppAssets.insightIcon, height: 24.h, width: 24.w),
    activeIcon: GlowIcon(
      glowColor: AppColors.purple661F,
      child: Image.asset(
        AppAssets.insightIcon,
        height: 24.h,
        width: 24.w,
        color: AppColors.purple661F,
      ),
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: Image.asset(AppAssets.profileIcon, height: 24, width: 24),
    activeIcon: GlowIcon(
      glowColor: AppColors.purple661F,
      child: Image.asset(
        AppAssets.profileIcon,
        height: 24.h,
        width: 24.w,
        color: AppColors.purple661F,
      ),
    ),
    label: '',
  ),
];
