import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/pages/restaurant/widgets/number_of_start.dart';
import 'package:food_ninja/views/widgets/custom_card.dart';

class TestimonialsCard extends StatelessWidget {
  const TestimonialsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Assets.assetsImagesGreenNoddle,
            fit: BoxFit.fill,
            height: 55.h,
          ),
          SizedBox(width: 14.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ahmed Ebrahim',
                          style: context.textTheme.titleMedium!.copyWith(
                            color: context.theme.canvasColor,
                          ),
                        ),
                        Text(
                          '12 April 2021',
                          style: context.textTheme.labelMedium!.copyWith(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const NumberOfStarts(),
                  ],
                ),
                SizedBox(height: 8.h),
                Text(
                  'This Is great, So delicious! You Must\n Here, With Your family . . ',
                  style: context.textTheme.labelMedium!.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
