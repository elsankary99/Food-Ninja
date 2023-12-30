import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/widgets/custom_logo.dart';

class LogoAndText extends StatelessWidget {
  const LogoAndText({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.height * 0.025),
        const CustomLogo(),
        SizedBox(height: context.height * 0.035),
        Text(
          title,
          style: context.textTheme.labelMedium!.copyWith(fontSize: 20.sp),
        ),
        SizedBox(height: context.height * 0.04),
      ],
    );
  }
}
