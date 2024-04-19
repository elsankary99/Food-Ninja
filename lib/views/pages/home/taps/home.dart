import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/core/routers/app_router.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_filter_icon.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_search_field.dart';
import 'package:food_ninja/views/pages/home/widgets/green_card.dart';
import 'package:food_ninja/views/pages/home/widgets/popular_restaurant_card.dart';
import 'package:food_ninja/views/pages/home/widgets/restaurant_card.dart';
import 'package:food_ninja/views/pages/home/widgets/restorant_type.dart';
import 'package:food_ninja/views/pages/home/widgets/top_notification_icon.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(height: 4.h),
          const TopNotificationIcon(),
          SizedBox(height: 16.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: InkWell(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: () => context.router.push(const SearchRoute()),
                  child: const CustomSearchField(
                    enabled: false,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              CustomFilterIcon(onTap: () {}),
            ],
          ),
          SizedBox(height: 16.h),
          const GreenCard(),
          SizedBox(height: 16.h),
          ResonantType(
            title: AppStrings.nearestRestaurant,
            onTap: () => context.router.push(const NearestRestaurantRoute()),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: context.height * 0.24,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: const RestaurantCard(),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          ResonantType(
            title: AppStrings.popularMenu,
            onTap: () => context.router.push(const PopularMenuRoute()),
          ),
          SizedBox(height: 16.h),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) => const PopularRestaurantCard(),
          ),
        ],
      ),
    );
  }
}
