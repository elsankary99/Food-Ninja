import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 22.h),
        Text(
          title,
          style: context.textTheme.labelMedium!.copyWith(fontSize: 24.sp),
        ),
        SizedBox(height: context.height * 0.02),
        Text(
          subTitle,
          style: context.textTheme.labelSmall!.copyWith(fontSize: 12.sp),
        ),
        SizedBox(height: 22.h),
      ],
    );
  }
}
