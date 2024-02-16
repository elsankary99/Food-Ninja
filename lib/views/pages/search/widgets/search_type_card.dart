import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class SearchTypeCard extends StatelessWidget {
  final String title;
  const SearchTypeCard({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.lightOrange.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Text(
        title,
        style: context.textTheme.labelSmall!.copyWith(
          color: AppColors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
