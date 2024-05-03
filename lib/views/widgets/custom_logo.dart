import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            Assets.assetsImagesLogo,
            fit: BoxFit.fill,
          ),
          Text(
            AppStrings.deliveryFavoriteFood,
            style: context.textTheme.labelSmall!.copyWith(
              fontWeight: FontWeight.w600,
              color: context.theme.canvasColor,
            ),
          )
        ],
      ),
    );
  }
}
