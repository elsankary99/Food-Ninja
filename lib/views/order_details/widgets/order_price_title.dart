import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class OrderPriceTitle extends StatelessWidget {
  final BuildContext context;
  final String title;
  final String price;

  final TextStyle style;
  OrderPriceTitle(
    this.context, {
    required this.title,
    required this.price,
    super.key,
  }) : style = context.textTheme.labelSmall!.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
        );
  OrderPriceTitle.total(
    this.context, {
    required this.title,
    required this.price,
    super.key,
  }) : style = context.textTheme.labelSmall!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 20.sp,
        );
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: style,
        ),
        Text(
          '$price \$',
          style: style,
        ),
      ],
    );
  }
}
