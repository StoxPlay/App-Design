import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';

class PrimaryContainer extends StatelessWidget {
  final Widget child;

  const PrimaryContainer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.blue7E.withOpacity(0.2), width: 2),
        boxShadow: [
          BoxShadow(
            color: AppColors.blue7E.withOpacity(0.5),
            blurRadius: 8,
            spreadRadius: 0.5,
            offset: Offset(0, 0), // Shadow direction: bottom right
          ),
        ],
      ),
      child: child,
    );
  }
}
