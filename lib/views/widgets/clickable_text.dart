import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class ClickableText extends StatelessWidget {
  const ClickableText({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: context.textTheme.labelLarge!.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: AppColors.deepGreen,
            fontWeight: FontWeight.bold,
            color: AppColors.deepGreen),
      ),
    );
  }
}
