import 'package:flutter/material.dart';
import 'package:food_ninja/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData lightThem = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.black,
    primaryColor: AppColors.green,
    hintColor: AppColors.orange,
    textTheme: const TextTheme(
      labelSmall: TextStyle(
        fontSize: 13,
        color: AppColors.blackText,
        fontFamily: "LibreFranklin",
      ),
    ),
  );
}
