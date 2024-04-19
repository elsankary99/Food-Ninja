import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_horizontal_line.dart';
import 'package:food_ninja/views/pages/home/widgets/member_type.dart';

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
                    const SizedBox(height: 22),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ahmed Ebrahim',
                              style: context.textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: context.theme.canvasColor,
                              ),
                            ),
                            InkWell(
                              child: SvgPicture.asset(
                                Assets.assetsImagesEditIcon,
                                width: 28,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'elsankary@gmail.com',
                          style: context.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
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
