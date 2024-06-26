import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final String? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    required this.hint,
    this.validator,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      style: context.textTheme.titleMedium!
          .copyWith(color: context.theme.canvasColor),
      cursorColor: AppColors.deepGreen,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: SvgPicture.asset(
                  prefixIcon!,
                ),
              )
            : null,
        hintText: hint,
        hintStyle: context.textTheme.labelLarge!
            .copyWith(color: Colors.grey.withOpacity(0.6)),
        fillColor: context.theme.hoverColor,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.grey.withOpacity(0.2), width: 1.6),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColors.green.withOpacity(0.3), width: 1.6),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
