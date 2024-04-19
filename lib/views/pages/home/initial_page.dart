import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/views/pages/home/taps/cart.dart';
import 'package:food_ninja/views/pages/home/taps/chat.dart';
import 'package:food_ninja/views/pages/home/taps/home.dart';
import 'package:food_ninja/views/pages/home/taps/profile.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_bottom_sheet.dart';

@RoutePage()
class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
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
        child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: const [
            HomeTap(),
            ProfileTap(),
            CartTap(),
            ChatTap(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).hoverColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurStyle: BlurStyle.outer,
                blurRadius: 3,
                spreadRadius: 0.1,
              ),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: CustomBottomSheet(
            onChanged: (value) {
              setState(() => controller.animateTo(value));
            },
          ),
        ),
      ),
    );
  }
}
