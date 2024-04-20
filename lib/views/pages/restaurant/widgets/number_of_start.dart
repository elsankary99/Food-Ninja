import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class NumberOfStarts extends StatelessWidget {
  const NumberOfStarts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.deepGreen.withOpacity(0.15),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.star_rate_rounded,
            size: 28,
            color: AppColors.deepGreen,
          ),
          const SizedBox(width: 4),
          Text(
            '5',
            style: context.textTheme.titleMedium!.copyWith(
              color: AppColors.deepGreen,
              fontWeight: FontWeight.w900,
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
