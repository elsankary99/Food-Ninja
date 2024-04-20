import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constants/app_colors.dart';
import 'package:food_ninja/core/constants/app_images.dart';
import 'package:food_ninja/core/constants/app_strings.dart';
import 'package:food_ninja/core/extensions/extensions.dart';

class BottomSheetIcon {
  final String name;
  final String icon;

  BottomSheetIcon({
    required this.name,
    required this.icon,
  });
}

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({required this.onChanged, super.key});
  final ValueChanged<int> onChanged;
  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  int currentIndex = 0;
  List<BottomSheetIcon> sheetList = [
    BottomSheetIcon(
      name: AppStrings.home,
      icon: Assets.assetsImagesHome,
    ),
    BottomSheetIcon(
      name: AppStrings.profile,
      icon: Assets.assetsImagesProfileLogo,
    ),
    BottomSheetIcon(
      name: AppStrings.cart,
      icon: Assets.assetsImagesCart,
    ),
    BottomSheetIcon(
      name: AppStrings.chat,
      icon: Assets.assetsImagesChat,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        sheetList.length,
        (index) {
          final data = sheetList[index];
          final equal = currentIndex == index;
          return GestureDetector(
            onTap: () {
              widget.onChanged(index);
              setState(() => currentIndex = index);
            },
            child: AnimatedContainer(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              duration: const Duration(milliseconds: 350),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: equal ? AppColors.green.withOpacity(0.15) : null,
              ),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      data.icon,
                      width: 28.sp,
                    ),
                    const SizedBox(width: 6),
                    AnimatedDefaultTextStyle(
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 350),
                      style: context.textTheme.labelMedium!.copyWith(
                        fontSize: equal ? 14.sp : 0,
                        color: context.theme.canvasColor,
                        fontWeight: FontWeight.w600,
                      ),
                      child: Text(
                        data.name,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
