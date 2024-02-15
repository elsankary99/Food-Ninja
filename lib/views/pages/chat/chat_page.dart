import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/views/pages/chat/widgets/chat_app_bar.dart';
import 'package:food_ninja/views/widgets/custom_text_form_field.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
            child: Stack(
              children: [
                const Positioned.fill(
                  child: Column(
                    children: [
                      ChatAppBar(),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 16.h,
                  left: 0,
                  right: 0,
                  child: CustomTextFormField(
                    hint: 'Message',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.assetsImagesIconSend),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
