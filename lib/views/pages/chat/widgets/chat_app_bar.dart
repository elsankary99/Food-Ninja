import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/widgets/custom_back_button.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10.h),
        Row(
          children: [
            const CustomBackButton(),
            SizedBox(width: 16.w),
            Container(
              height: 50.w,
              width: 50.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/d225/a080/66427d0d5f06284a4fd49d3538d49672?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LhDO4tHIr-gqc4q3nTvVa8PDLQ9IkzwZKa8kcFJn89H-DJOnH0Gj3nhK-HZd7pD2LzBX~o0fLLFWxwJEFzqz8x7JsDdQBLQ2zwSNeBkTrMEHF0tKIqFZvcxj1qXmmcamXDCvxMqDSGttEGe22ro4Fx~ZpHYL7M3-IN89ugF2k-UkKIEndKNsQeDEVpV7Nu36V98GLthIaRXa16BkJqF4U~3xKRXVUFCImZl2VUVxNyFeTLEF5sRvL0W29TYI-FOgpOyKbO0CkntQuaHS4~zcoH2blrXKFDGxPRS8NDYKUaYX~IWebr5TOCamrfyPuiKE4vDShUGh05OuYPJN8i19lw__",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 16.w),
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
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.green,
                      radius: 5.r,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      "Online",
                      style: context.textTheme.labelSmall!.copyWith(
                          fontSize: 14.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Divider(
          thickness: 1.5,
          color: Colors.grey.withOpacity(0.5),
        )
      ],
    );
  }
}
