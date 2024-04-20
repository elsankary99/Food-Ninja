import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/widgets/custom_card.dart';

class PopularRestaurantMenuCard extends StatelessWidget {
  const PopularRestaurantMenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.assetsImagesGreenNoddle,
            fit: BoxFit.fill,
            height: 55.h,
          ),
          SizedBox(height: 14.h),
          Text(
            'Green Noddle',
            style: context.textTheme.titleMedium!.copyWith(
              color: context.theme.canvasColor,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            'Noddle Home',
            style: context.textTheme.labelMedium!.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
