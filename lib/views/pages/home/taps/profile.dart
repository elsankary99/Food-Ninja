import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_horizontal_line.dart';
import 'package:food_ninja/views/pages/home/widgets/favorite_card.dart';
import 'package:food_ninja/views/pages/home/widgets/member_type.dart';
import 'package:food_ninja/views/pages/home/widgets/user_info_section.dart';
import 'package:food_ninja/views/pages/home/widgets/voucher_card.dart';

class ProfileTap extends StatelessWidget {
  const ProfileTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.height * 0.36,
          color: Colors.red,
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.7,
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
                    const MemberType(),
                    SizedBox(height: 20.h),
                    const UserInformationSection(),
                    SizedBox(height: 20.h),
                    const VoucherCard(),
                    SizedBox(height: 14.h),
                    Text(
                      'Favorite',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.theme.canvasColor,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    ListView.separated(
                      padding: EdgeInsets.zero,
                      separatorBuilder: (_, __) => SizedBox(height: 8.h),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) => const FavoriteCard(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
