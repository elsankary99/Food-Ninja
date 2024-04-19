import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class MemberType extends StatelessWidget {
  const MemberType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightOrange.withOpacity(0.1),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Text(
        'Member Gold',
        style: context.textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.lightOrange,
        ),
      ),
    );
  }
}
