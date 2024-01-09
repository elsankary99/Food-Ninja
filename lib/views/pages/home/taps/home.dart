import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_filter_icon.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_search_field.dart';
import 'package:food_ninja/views/pages/home/widgets/green_card.dart';
import 'package:food_ninja/views/pages/home/widgets/restaurant_card.dart';
import 'package:food_ninja/views/pages/home/widgets/restorant_type.dart';
import 'package:food_ninja/views/pages/home/widgets/top_notification_icon.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 4.h),
          const TopNotificationIcon(),
          SizedBox(height: 16.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(child: CustomSearchField()),
              const SizedBox(width: 16),
              CustomFilterIcon(onTap: () {}),
            ],
          ),
          SizedBox(height: 16.h),
          const GreenCard(),
          SizedBox(height: 16.h),
          ResonantType(
            title: AppStrings.nearestRestaurant,
            onTap: () {},
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: context.height * 0.24,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => const RestaurantCard(),
            ),
          ),
          SizedBox(height: 16.h),
          ResonantType(
            title: AppStrings.nearestRestaurant,
            onTap: () {},
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
