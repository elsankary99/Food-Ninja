import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_filter_icon.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_search_field.dart';
import 'package:food_ninja/views/pages/home/widgets/popular_restaurant_card.dart';
import 'package:food_ninja/views/widgets/custom_back_button.dart';

@RoutePage()
class PopularMenuPage extends StatelessWidget {
  const PopularMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              Assets.assetsImagesCorner,
            ),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(height: 4.h),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CustomBackButton(),
                ),
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.popularMenu,
                    style: context.textTheme.labelMedium!
                        .copyWith(fontSize: 16.sp),
                  ),
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) =>
                        const PopularRestaurantCard(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
