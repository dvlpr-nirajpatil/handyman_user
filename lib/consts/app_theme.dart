import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_user/consts/color_pallet.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: Color(0xffffffff),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: Size(double.infinity, 45.h),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.backgroundColor,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: AppColors.backgroundColor),
          borderRadius: BorderRadius.circular(12.r)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 1),
          borderRadius: BorderRadius.circular(12.r)),
    ),
  );
}
