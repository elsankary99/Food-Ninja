import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/widgets/custom_card.dart';

class VoucherCard extends StatelessWidget {
  const VoucherCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.assetsImagesVoucherIcon,
            width: 45.w,
          ),
          SizedBox(width: 20.w),
          Text(
            'You Have 3 Voucher',
            style: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: context.theme.canvasColor,
            ),
          ),
        ],
      ),
    );
  }
}
