import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/core/routers/app_router.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_horizontal_line.dart';
import 'package:food_ninja/views/pages/home/widgets/favorite_card.dart';
import 'package:food_ninja/views/pages/home/widgets/member_type.dart';
import 'package:food_ninja/views/pages/home/widgets/restorant_type.dart';
import 'package:food_ninja/views/pages/home/widgets/user_info_section.dart';
import 'package:food_ninja/views/pages/home/widgets/voucher_card.dart';
import 'package:food_ninja/views/widgets/custom_back_button.dart';
import 'package:food_ninja/views/widgets/warb_color.dart';

import 'package:food_ninja/views/pages/restaurant/widgets/icon_and_text.dart';

import 'package:food_ninja/views/pages/restaurant/widgets/popular_restaurant_menu_card.dart';

@RoutePage()
class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: context.height * 0.46,
            color: Colors.black,
          ),
          PositionedDirectional(
            start: 18.w,
            top: 12.h,
            child: const CustomBackButton(),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.58,
            minChildSize: 0.58,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.theme.scaffoldBackgroundColor,
                  // color: Colors.amber,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(35),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomHorizontalLine(),
                      const Row(
                        children: [
                          MemberType(
                            title: 'Popular',
                            color: AppColors.deepGreen,
                          ),
                          Spacer(),
                          WrapIconCover(
                            icon: FontAwesomeIcons.locationDot,
                            color: AppColors.deepGreen,
                          ),
                          SizedBox(width: 20),
                          WrapIconCover(
                            icon: FontAwesomeIcons.solidHeart,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        'Wijie Bar and Resto',
                        style: context.textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.theme.canvasColor,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      const Row(
                        children: [
                          IconAndText(
                            title: '19 Km',
                            icon: Icons.location_on_rounded,
                          ),
                          SizedBox(width: 20),
                          IconAndText(
                            title: '4,8 Rating',
                            icon: Icons.star_half_rounded,
                          ),
                        ],
                      ),
                      SizedBox(height: 14.h),
                      ResonantType(
                        title: AppStrings.popularMenu,
                        onTap: () =>
                            context.router.push(const PopularMenuRoute()),
                      ),
                      SizedBox(height: 14.h),
                      SizedBox(
                        height: context.height * 0.2,
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (_, __) => SizedBox(width: 12.h),
                          itemCount: 10,
                          itemBuilder: (context, index) =>
                              const PopularRestaurantMenuCard(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
