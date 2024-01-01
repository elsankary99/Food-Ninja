import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class CongratsWidgets extends StatelessWidget {
  const CongratsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.assetsImagesCongrats,
          width: context.width * 0.5,
        ),
        SizedBox(height: 20.h),
        SvgPicture.asset(
          Assets.assetsImagesCongratsText,
          width: context.width * 0.4,
        ),
        SizedBox(height: 20.h),
        Text(
          AppStrings.profileReadyMessage,
          style: context.textTheme.labelMedium!.copyWith(
            fontSize: 20.sp,
          ),
        ),
      ],
    );
  }
}
