import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class ResonantType extends StatelessWidget {
  const ResonantType({
    super.key,
    required this.title,
    required this.onTap,
  });
  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.textTheme.labelMedium!.copyWith(fontSize: 16.sp),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            AppStrings.viewMore,
            style: context.textTheme.labelSmall!
                .copyWith(color: AppColors.orange, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
