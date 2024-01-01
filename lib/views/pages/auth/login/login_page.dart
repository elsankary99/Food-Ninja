import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/core/routers/app_router.dart';
import 'package:food_ninja/views/pages/auth/widgets/logo_and_text.dart';
import 'package:food_ninja/views/widgets/clickable_text.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:food_ninja/views/widgets/custom_text_form_field.dart';
import 'package:food_ninja/views/pages/auth/widgets/social_login.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const LogoAndText(title: AppStrings.loginYourAccount),
                  const CustomTextFormField(
                    prefixIcon: Assets.assetsImagesEmailLogo,
                    hint: AppStrings.email,
                  ),
                  SizedBox(height: context.height * 0.02),
                  const CustomTextFormField(
                    prefixIcon: Assets.assetsImagesPasswordLogo,
                    hint: AppStrings.password,
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    AppStrings.continueWith,
                    style: context.textTheme.labelSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: context.height * 0.02),
                  const LoginWithSocial(),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    AppStrings.forgotPassword,
                    style: context.textTheme.labelSmall!.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.deepGreen,
                        fontWeight: FontWeight.bold,
                        color: AppColors.deepGreen),
                  ),
                  SizedBox(height: context.height * 0.04),
                  CustomButton(
                    title: AppStrings.login,
                    onTap: () {},
                  ),
                  SizedBox(height: context.height * 0.02),
                  ClickableText(
                    text: AppStrings.dontHaveAccount,
                    onTap: () => context.router.replace(const SignUpRoute()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
