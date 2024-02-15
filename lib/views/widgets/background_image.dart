import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_images.dart';

class BackgroundFruitsImage extends StatelessWidget {
  final Widget? child;
  const BackgroundFruitsImage({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            Assets.assetsImagesCorner,
          ),
        ),
      ),
      child: child,
    );
  }
}
