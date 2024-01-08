import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class GreenCard extends StatelessWidget {
  const GreenCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height * 0.21,
      decoration: BoxDecoration(
        color: AppColors.deepGreen,
        borderRadius: BorderRadius.circular(15.r),
        image: const DecorationImage(
          image: AssetImage(Assets.assetsImagesBackgroundButton),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            bottom: -context.height * 0.1,
            left: -context.width * 0.4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 65.w),
              child: Image.asset(
                Assets.assetsImagesIceCream,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.specialDealForOctober,
                    style: context.textTheme.labelMedium!
                        .copyWith(color: Colors.white, fontSize: 18.sp),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        AppStrings.buyNow,
                        style: context.textTheme.labelSmall!.copyWith(
                          color: AppColors.deepGreen,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
