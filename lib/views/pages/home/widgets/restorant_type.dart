import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class ResonantType extends StatelessWidget {
  const ResonantType({
    required this.title,
    required this.onTap,
    super.key,
  });
  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.textTheme.titleMedium!
              .copyWith(color: context.theme.canvasColor),
        ),
        InkWell(
          onTap: onTap,
          splashColor: AppColors.lightOrange,
          child: Text(
            AppStrings.viewMore,
            style: context.textTheme.labelMedium!.copyWith(
              color: AppColors.orange,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
