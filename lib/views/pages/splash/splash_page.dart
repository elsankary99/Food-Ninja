import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/views/widgets/custom_logo.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              Assets.assetsImagesSplashBackground,
            ),
          ),
        ),
        child: const CustomLogo(),
      ),
    );
  }
}
