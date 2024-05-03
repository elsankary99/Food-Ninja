import 'package:flutter/material.dart';
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
  }) : style = context.textTheme.bodyLarge!.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        );
  OrderPriceTitle.total(
    this.context, {
    required this.title,
    required this.price,
    super.key,
  }) : style = context.textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white,
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
