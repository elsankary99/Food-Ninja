import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/widgets/custom_back_button.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:food_ninja/views/widgets/custom_text_form_field.dart';
import 'package:food_ninja/views/widgets/welcome_text.dart';

@RoutePage()
class UserInformationPage extends ConsumerWidget {
  const UserInformationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              Assets.assetsImagesCorner,
            ),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  const CustomBackButton(),
                  const WelcomeText(
                    title: AppStrings.fillBio,
                    subTitle: AppStrings.bioDisplay,
                  ),
                  const CustomTextFormField(hint: AppStrings.firstName),
                  SizedBox(height: context.height * 0.02),
                  const CustomTextFormField(hint: AppStrings.lastName),
                  SizedBox(height: context.height * 0.02),
                  const CustomTextFormField(hint: AppStrings.mobileNumber),
                  SizedBox(height: context.height * 0.25),
                  Center(
                    child: CustomButton(onTap: () {}, title: AppStrings.next),
                  ),
                  SizedBox(height: context.height * 0.02),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
