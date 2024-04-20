import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class PopularRestaurantCard extends StatelessWidget {
  const PopularRestaurantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.12,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: context.theme.hoverColor,
      ),
      child: Row(
        children: [
          Image.asset(
            Assets.assetsImagesGreenNoddle,
            height: 85.h,
          ),
          SizedBox(width: 12.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Green Noddle',
                style: context.textTheme.titleMedium!.copyWith(
                  color: context.theme.canvasColor,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                'Noddle Home',
                style: context.textTheme.labelLarge!.copyWith(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '\$7',
            style: context.textTheme.titleLarge!.copyWith(
              color: AppColors.lightOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
