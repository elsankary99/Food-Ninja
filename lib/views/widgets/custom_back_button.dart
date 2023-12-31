import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_images.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.pop(),
      child: SizedBox(
        child: SvgPicture.asset(Assets.assetsImagesBackButton),
      ),
    );
  }
}
