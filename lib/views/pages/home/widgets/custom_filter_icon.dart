import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';

class CustomFilterIcon extends StatelessWidget {
  const CustomFilterIcon({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: AppColors.lightOrange.withOpacity(0.25),
        ),
        child: SvgPicture.asset(
          Assets.assetsImagesFilterIcon,
          width: 24.sp,
        ),
      ),
    );
  }
}
