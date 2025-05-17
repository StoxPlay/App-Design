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
    this.isExpanded = false,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final button = GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 45.h,
        width: width ?? MediaQuery.of(context).size.width,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.purple661F,
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor ?? AppColors.white,
              fontSize: fontSize ?? 18.sp,
              fontWeight: fontWeight ?? FontWeight.w800,
            ),
          ),
        ),
      ),
    );

    if (isExpanded) {
      return Expanded(child: button);
    }

    return button;
  }
}
