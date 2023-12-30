import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/views/widgets/login_widgets/social_button.dart';

class LoginWithSocial extends StatelessWidget {
  const LoginWithSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SocialButton(
          onTap: () {},
          image: Assets.assetsImagesFacebook,
          title: AppStrings.facebookLogin,
        ),
        SocialButton(
          onTap: () {},
          image: Assets.assetsImagesGoogle,
          title: AppStrings.googleLogin,
        )
      ],
    );
  }
}
