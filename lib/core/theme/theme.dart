import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData lightThem = ThemeData(
    scaffoldBackgroundColor: AppColors.light,
    canvasColor: Colors.black,
    primaryColor: AppColors.green,
    hintColor: AppColors.orange,
    disabledColor: Colors.white,
    hoverColor: Colors.white,
  );

  static ThemeData darkThem = ThemeData(
    scaffoldBackgroundColor: AppColors.dark,
    canvasColor: Colors.white,
    primaryColor: AppColors.green,
    hintColor: AppColors.orange,
    disabledColor: Colors.black,
    hoverColor: Colors.grey[900],
  );
}
