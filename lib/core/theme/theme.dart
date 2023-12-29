import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData lightThem = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.black,
    primaryColor: AppColors.green,
    hintColor: AppColors.orange,
    textTheme: TextTheme(
      labelSmall: TextStyle(
        fontSize: 13.sp,
        color: AppColors.blackText,
        fontFamily: "LibreFranklin",
      ),
      labelMedium: TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.blackText,
        fontFamily: "LibreFranklin",
      ),
    ),
  );
}
