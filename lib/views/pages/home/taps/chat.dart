import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/views/pages/home/widgets/custom_chat_card.dart';
import 'package:food_ninja/views/pages/home/widgets/top_notification_icon.dart';

class ChatTap extends StatelessWidget {
  const ChatTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4.h),
        const TopNotificationIcon(
          title: AppStrings.chat,
        ),
        SizedBox(height: 10.h),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => const CustomChatCard(),
          ),
        ),
      ],
    );
  }
}
