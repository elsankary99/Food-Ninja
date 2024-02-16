import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_filter_icon.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_search_field.dart';
import 'package:food_ninja/views/pages/search/widgets/search_type_card.dart';
import 'package:food_ninja/views/widgets/background_image.dart';
import 'package:food_ninja/views/widgets/custom_back_button.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:food_ninja/views/widgets/keyboard_dismissal.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissible(
      child: Scaffold(
        body: BackgroundFruitsImage(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4.h),
                    const CustomBackButton(),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Expanded(
                          child: CustomSearchField(),
                        ),
                        const SizedBox(width: 16),
                        CustomFilterIcon(onTap: () {}),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Type',
                      style: context.textTheme.labelMedium!
                          .copyWith(fontSize: 16.sp),
                    ),
                    SizedBox(height: 16.h),
                    const SearchTypeCard(title: 'Restaurant'),
                    const Wrap(
                      children: [
                        SearchTypeCard(title: 'Restaurant'),
                        SearchTypeCard(title: 'Restaurant'),
                        SearchTypeCard(title: 'Restaurant'),
                      ],
                    ),
                    Text(
                      'Location',
                      style: context.textTheme.labelMedium!
                          .copyWith(fontSize: 16.sp),
                    ),
                    Text(
                      'Food',
                      style: context.textTheme.labelMedium!
                          .copyWith(fontSize: 16.sp),
                    ),
                    SizedBox(height: 35.h),
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                        onTap: () {},
                        title: AppStrings.search,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
