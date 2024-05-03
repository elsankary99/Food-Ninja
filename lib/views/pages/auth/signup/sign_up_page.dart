import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/core/routers/app_router.dart';
import 'package:food_ninja/views/pages/auth/widgets/custom_check_box.dart';
import 'package:food_ninja/views/pages/auth/widgets/logo_and_text.dart';
import 'package:food_ninja/views/widgets/clickable_text.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:food_ninja/views/widgets/custom_text_form_field.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  const LogoAndText(title: AppStrings.signUpForFree),
                  const CustomTextFormField(
                    prefixIcon: Assets.assetsImagesProfileLogo,
                    hint: AppStrings.userName,
                  ),
                  SizedBox(height: context.height * 0.02),
                  const CustomTextFormField(
                    prefixIcon: Assets.assetsImagesEmailLogo,
                    hint: AppStrings.email,
                  ),
                  SizedBox(height: context.height * 0.02),
                  const CustomTextFormField(
                    prefixIcon: Assets.assetsImagesPasswordLogo,
                    hint: AppStrings.password,
                  ),
                  SizedBox(height: context.height * 0.01),
                  CustomCheckBox(
                    value: true,
                    text: AppStrings.keepMeSignIn,
                    onChanged: (value) {},
                  ),
                  CustomCheckBox(
                    value: false,
                    text: AppStrings.emailMeAboutSpecial,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: context.height * 0.015),
                  CustomButton(
                    title: AppStrings.createAccountButton,
                    onTap: () =>
                        context.router.push(const UserInformationRoute()),
                  ),
                  SizedBox(height: context.height * 0.02),
                  ClickableText(
                    text: AppStrings.alreadyHaveAccount,
                    onTap: () => context.router.replace(const LoginRoute()),
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
