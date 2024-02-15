import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/core/routers/app_router.dart';

class TopNotificationIcon extends StatelessWidget {
  const TopNotificationIcon({
    super.key,
    this.title,
  });
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? AppStrings.findYourFavoriteFood,
          style: context.textTheme.labelLarge!.copyWith(fontSize: 26.sp),
        ),
        InkWell(
          onTap: () => context.router.push(const NotificationRoute()),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: context.theme.hoverColor,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 1,
                ),
              ],
            ),
            child: SvgPicture.asset(
              Assets.assetsImagesPell,
              width: 19.sp,
            ),
          ),
        ),
      ],
    );
  }
}
