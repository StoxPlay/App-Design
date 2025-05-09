import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool isExpanded;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
    this.borderRadius,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.backgroundColor,
    this.padding,
    this.isExpanded = true,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final button = ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.purple661F,
        padding: padding ?? EdgeInsets.symmetric(vertical: 15.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
        minimumSize: Size(width ?? 0, height ?? 45.h),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (prefixIcon != null) ...[
            prefixIcon!,
            SizedBox(width: 8.w),
          ],
          Text(
            text,
            style: TextStyle(
              color: textColor ?? AppColors.white,
              fontSize: fontSize ?? 16.sp,
              fontWeight: fontWeight ?? FontWeight.w800,
            ),
          ),
          if (suffixIcon != null) ...[
            SizedBox(width: 8.w),
            suffixIcon!,
          ],
        ],
      ),
    );

    return isExpanded ? Row(
      children: [
        Expanded(child: button),
      ],
    ) : button;
  }
} 