import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

import 'package:food_ninja/views/order_details/widgets/order_mount_buttons.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: context.theme.hoverColor,
      ),
      child: Row(
        children: [
          Image.asset(
            Assets.assetsImagesGreenNoddle,
            height: 50.h,
          ),
          SizedBox(width: 12.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Green Noddle',
                style: context.textTheme.labelMedium!.copyWith(
                  fontSize: 16.sp,
                ),
              ),
              Text(
                'Noddle Home',
                style: context.textTheme.labelSmall!.copyWith(
                  fontSize: 13.sp,
                  color: Colors.grey,
                ),
              ),
              Text(
                '\$7',
                style: context.textTheme.labelLarge!.copyWith(
                  color: AppColors.green,
                  fontSize: 20.sp,
                ),
              ),
            ],
          ),
          const Spacer(),
          SizedBox(width: 10.w),
          const OrderMountButtons(),
        ],
      ),
    );
  }
}
