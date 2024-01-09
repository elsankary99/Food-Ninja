import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData lightThem = ThemeData(
    scaffoldBackgroundColor: AppColors.light,
    canvasColor: Colors.black,
    primaryColor: AppColors.green,
    hintColor: AppColors.orange,
    disabledColor: Colors.white,
    hoverColor: Colors.white,
    textTheme: TextTheme(
      labelSmall: TextStyle(
        fontSize: 13.sp,
        color: AppColors.blackText,
        fontFamily: "LibreFranklin",
      ),
      labelMedium: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.blackText,
        fontFamily: "LibreFranklin",
      ),
      labelLarge: TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w800,
        color: AppColors.blackText,
        fontFamily: "LibreFranklin",
      ),
    ),
  );

  static ThemeData darkThem = ThemeData(
    scaffoldBackgroundColor: AppColors.dark,
    canvasColor: Colors.white,
    primaryColor: AppColors.green,
    hintColor: AppColors.orange,
    disabledColor: Colors.black,
    hoverColor: Colors.grey.withOpacity(0.1),
    textTheme: TextTheme(
      labelSmall: TextStyle(
        fontSize: 13.sp,
        color: Colors.white,
        fontFamily: "LibreFranklin",
      ),
      labelMedium: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: "LibreFranklin",
      ),
      labelLarge: TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w800,
        color: Colors.white,
        fontFamily: "LibreFranklin",
      ),
    ),
  );
}
