import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/core/routers/app_router.dart';
import 'package:food_ninja/models/onboarding_model.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';

@RoutePage()
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController controller;
  List<OnBoardingModel> itemsList = [
    OnBoardingModel(
      image: Assets.assetsImagesOnboarding1,
      title: AppStrings.welcomeMessage,
      subTitle: AppStrings.flavorMessage,
    ),
    OnBoardingModel(
      image: Assets.assetsImagesOnboarding2,
      title: AppStrings.tagline,
      subTitle: AppStrings.deliveryMessage,
    )
  ];
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itemsList.length,
              itemBuilder: (context, index) {
                final data = itemsList[index];

                return Column(
                  children: [
                    SizedBox(height: context.height * 0.04),
                    SizedBox(
                      height: context.height * 0.45,
                      child: Image.asset(
                        data.image,
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: context.height * 0.042),
                        Text(
                          data.title,
                          textAlign: TextAlign.center,
                          style: context.textTheme.headlineMedium!.copyWith(
                            color: context.theme.canvasColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: context.height * 0.03),
                        Text(
                          data.subTitle,
                          textAlign: TextAlign.center,
                          style: context.textTheme.labelLarge!.copyWith(
                            color: context.theme.canvasColor,
                          ),
                        ),
                        SizedBox(height: context.height * 0.1),
                        SizedBox(
                          width: context.width * 0.5,
                          child: CustomButton(
                            title: AppStrings.next,
                            onTap: () {
                              if (index == itemsList.length - 1) {
                                context.router.replaceAll([const LoginRoute()]);
                                return;
                              }
                              setState(() {
                                controller.animateToPage(1,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut);
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
