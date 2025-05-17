import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:stoxplay/utils/common/widgets/common_stoxplay_icon.dart';

class CommonAppbarTitle extends StatelessWidget {
  const CommonAppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonStoxplayIcon(
              iconHeight: 28.h,
              iconWidth: 25.w,
              shadowHeight: 0,
              shadowWidth: 0,
            ),
            Gap(5.w),
            CommonStoxplayText(
              fontSize: 22.sp,
              shadowOffsetY: 2,
              shadowBlurRadius: 2,
            ),
          ],
        ),
      ],
    );
  }
}
