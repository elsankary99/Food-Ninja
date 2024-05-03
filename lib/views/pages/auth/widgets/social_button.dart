import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.onTap,
    required this.image,
    required this.title,
  });
  final VoidCallback onTap;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: context.theme.hoverColor,
          border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1.6),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              image,
              height: 30.sp,
            ),
            SizedBox(width: 10.w),
            Text(
              title,
              style: context.textTheme.labelLarge!.copyWith(
                color: context.theme.canvasColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
