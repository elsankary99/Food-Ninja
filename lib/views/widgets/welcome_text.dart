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
          style: context.textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.canvasColor,
          ),
        ),
        SizedBox(height: context.height * 0.02),
        Text(
          subTitle,
          style: context.textTheme.bodySmall!.copyWith(
              color: context.theme.canvasColor, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 22.h),
      ],
    );
  }
}
