import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class SetLocationWidget extends StatelessWidget {
  const SetLocationWidget({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
      decoration: BoxDecoration(
          color: Theme.of(context).disabledColor,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 10.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                Assets.assetsImagesLocationIcon,
              ),
              SizedBox(width: 14.w),
              Text(
                AppStrings.yourLocation,
                style: context.textTheme.labelMedium!.copyWith(
                  fontSize: 14.sp,
                ),
              )
            ],
          ),
          SizedBox(height: context.height * 0.07),
          SizedBox(
            height: 40.h,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 0,
                shadowColor: AppColors.green.withOpacity(0.1),
                backgroundColor: Colors.grey.withOpacity(0.1),
              ),
              child: Text(
                AppStrings.setLocationButton,
                style: context.textTheme.labelMedium!.copyWith(fontSize: 13.sp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
