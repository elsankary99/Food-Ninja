import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';
import 'package:food_ninja/views/widgets/custom_back_button.dart';
import 'package:food_ninja/views/widgets/custom_button.dart';
import 'package:food_ninja/views/pages/upload_photo/widgets/pick_image_card.dart';
import 'package:food_ninja/views/widgets/welcome_text.dart';

@RoutePage()
class UploadPhotoPage extends StatelessWidget {
  const UploadPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    title: AppStrings.uploadPhotoProfile,
                    subTitle: AppStrings.bioDisplay,
                  ),
                  const PickImageCard(
                    image: Assets.assetsImagesGallery,
                    title: AppStrings.fromGallery,
                  ),
                  const PickImageCard(
                    image: Assets.assetsImagesCamera,
                    title: AppStrings.takePhoto,
                  ),
                  SizedBox(height: context.height * 0.14),
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
