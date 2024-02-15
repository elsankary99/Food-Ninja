import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class CustomSearchField extends StatelessWidget {
  final bool enabled;
  final TextEditingController? controller;
  const CustomSearchField({
    super.key,
    this.enabled = true,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enabled,
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        cursorColor: AppColors.orange,
        decoration: InputDecoration(
          fillColor: AppColors.lightOrange.withOpacity(0.25),
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 14.h,
          ),
          hintText: AppStrings.whatDoYouWantToOrder,
          hintStyle: context.textTheme.labelSmall!.copyWith(
            color: AppColors.lightOrange,
          ),
          prefixIcon: UnconstrainedBox(
            child: SvgPicture.asset(
              Assets.assetsImagesIconSearch,
              width: 26.sp,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
