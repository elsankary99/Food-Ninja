import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class PickImageCard extends StatelessWidget {
  const PickImageCard({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.18,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 14.h),
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
          color: Theme.of(context).disabledColor,
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              image,
            ),
            SizedBox(height: 10.h),
            Text(
              title,
              style: context.textTheme.labelMedium!.copyWith(fontSize: 12.sp),
            )
          ],
        ),
      ),
    );
  }
}
