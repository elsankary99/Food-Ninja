import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class RestaurantCard extends StatelessWidget {
  final VoidCallback? onTap;
  const RestaurantCard({
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      child: Container(
        height: context.height * 0.24,
        width: context.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: context.theme.hoverColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.assetsImagesWomenChef2,
              height: 85.h,
            ),
            SizedBox(height: 12.h),
            Text(
              'data',
              style: context.textTheme.titleMedium!.copyWith(
                color: context.theme.canvasColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '15 Mini',
              style: context.textTheme.labelLarge!.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
