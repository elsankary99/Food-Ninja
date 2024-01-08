import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SvgPicture.asset(
            Assets.assetsImagesIconSearch,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
