import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/typography.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    primaryColor: AppColors.primary,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: AppColors.scaffoldBackgroundColor),
        backgroundColor: AppColors.primary,
        titleTextStyle: TextStyle(
            color: AppColors.scaffoldBackgroundColor,
            fontFamily: Typo.medium,
            fontSize: 18.sp)),
    scaffoldBackgroundColor: Color(0xffffffff),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        textStyle: TextStyle(fontFamily: Typo.medium, fontSize: 16.sp),
        minimumSize: Size(double.infinity, 45.h),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
          fontFamily: Typo.medium, fontSize: 14.sp, color: AppColors.body),
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
