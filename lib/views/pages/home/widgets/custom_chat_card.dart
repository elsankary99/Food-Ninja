import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/core/routers/app_router.dart';

class CustomChatCard extends StatelessWidget {
  const CustomChatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(const ChatRoute()),
      child: Container(
        height: context.height * 0.12,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: context.theme.hoverColor,
        ),
        child: Row(
          children: [
            Container(
              height: 75.h,
              width: 85.w,
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: const DecorationImage(
                    image: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/d225/a080/66427d0d5f06284a4fd49d3538d49672?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LhDO4tHIr-gqc4q3nTvVa8PDLQ9IkzwZKa8kcFJn89H-DJOnH0Gj3nhK-HZd7pD2LzBX~o0fLLFWxwJEFzqz8x7JsDdQBLQ2zwSNeBkTrMEHF0tKIqFZvcxj1qXmmcamXDCvxMqDSGttEGe22ro4Fx~ZpHYL7M3-IN89ugF2k-UkKIEndKNsQeDEVpV7Nu36V98GLthIaRXa16BkJqF4U~3xKRXVUFCImZl2VUVxNyFeTLEF5sRvL0W29TYI-FOgpOyKbO0CkntQuaHS4~zcoH2blrXKFDGxPRS8NDYKUaYX~IWebr5TOCamrfyPuiKE4vDShUGh05OuYPJN8i19lw__",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 12.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Guy Hawkins",
                  style: context.textTheme.labelMedium!.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  "Your Order Just Arrived!",
                  style: context.textTheme.labelSmall!.copyWith(
                    fontSize: 13.sp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
