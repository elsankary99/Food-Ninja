import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.text,
    required this.onChanged,
    this.value,
  });
  final bool? value;
  final String text;
  final ValueChanged<bool?> onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.2,
          child: Checkbox(
            value: value,
            activeColor: Theme.of(context).primaryColor,
            onChanged: onChanged,
            shape: const CircleBorder(),
          ),
        ),
        Text(
          text,
          style: context.textTheme.labelSmall!.copyWith(
            fontSize: 12.sp,
            color: Colors.grey.withOpacity(0.8),
          ),
        )
      ],
    );
  }
}
