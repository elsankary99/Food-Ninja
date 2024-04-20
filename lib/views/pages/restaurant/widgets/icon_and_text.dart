import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class IconAndText extends StatelessWidget {
  final Color? color;
  final String title;
  final IconData icon;
  const IconAndText({
    required this.title,
    required this.icon,
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color ?? AppColors.deepGreen,
          size: 28,
        ),
        const SizedBox(width: 6),
        Text(
          title,
          style: context.textTheme.titleSmall!.copyWith(
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
