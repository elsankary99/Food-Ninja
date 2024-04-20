import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: context.theme.hoverColor,
      ),
      child: Row(
        children: [
          Image.asset(
            Assets.assetsImagesGreenNoddle,
            fit: BoxFit.fill,
            height: 55.h,
          ),
          SizedBox(width: 10.w),
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
                style: context.textTheme.labelMedium!.copyWith(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                '\$7',
                style: context.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.deepGreen,
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.green,
                    AppColors.deepGreen,
                  ],
                ),
              ),
              child: Text(
                'Buy Again',
                style: context.textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.theme.canvasColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
