import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/routers/app_router.dart';
import 'package:food_ninja/views/widgets/custom_logo.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> goToOnBoarding() async {
    Future.delayed(const Duration(seconds: 2), () {
      context.router.replaceAll([const OnBoardingRoute()]);
    });
  }

  @override
  void initState() {
    goToOnBoarding();
    super.initState();
  }

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
