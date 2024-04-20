import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class UserInformationSection extends StatelessWidget {
  const UserInformationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
