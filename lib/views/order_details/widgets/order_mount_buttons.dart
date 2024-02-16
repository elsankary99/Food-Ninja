import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class OrderMountButtons extends StatefulWidget {
  const OrderMountButtons({super.key});

  @override
  State<OrderMountButtons> createState() => _OrderMountButtonsState();
}

class _OrderMountButtonsState extends State<OrderMountButtons> {
  int _count = 1;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      if (_count > 1) {
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: _decrementCount,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.green.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              FontAwesomeIcons.minus,
              color: Colors.green,
              size: 16,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '$_count',
          style: context.textTheme.labelMedium!.copyWith(
            fontSize: 13.sp,
          ),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: _incrementCount,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
