import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.08,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
          color: Theme.of(context).disabledColor,
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: SvgPicture.asset(
          image,
        ),
      ),
    );
  }
}
