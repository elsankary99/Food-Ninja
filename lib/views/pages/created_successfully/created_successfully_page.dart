import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/pages/created_successfully/widgets/congrats_widgets.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';

@RoutePage()
class CreatedSuccessfullyPage extends StatelessWidget {
  const CreatedSuccessfullyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                Assets.assetsImagesSplashBackground,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: context.height * 0.24),
              const CongratsWidgets(),
              SizedBox(height: context.height * 0.23),
              CustomButton(onTap: () {}, title: AppStrings.tryOrderButton),
            ],
          )),
    );
  }
}
