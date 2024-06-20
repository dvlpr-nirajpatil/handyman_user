import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Correct import for flutter_svg
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';

class ServiceDetail extends StatelessWidget {
  const ServiceDetail({super.key});

  static String id = "ServiceDetail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AssetsUrl.serviceBg,
                  width: double.infinity,
                  height: 381.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 20.w,
                  top: 20.h,
                  child: CircleAvatar(
                    radius: 18.r,
                    backgroundColor: AppColors.scaffoldBackgroundColor,
                    child: SvgPicture.asset(
                      AssetsUrl.like,
                      width: 16.w,
                    ),
                  ),
                ),
                Positioned(
                  top: 289.h,
                  left: 20.w,
                  child: Container(
                    width: 335.w,
                    padding: EdgeInsets.symmetric(
                      vertical: 24.h,
                      horizontal: 16.w,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Electronics",
                              style: TextStyle(
                                fontFamily: Typo.semiBold,
                                fontSize: 14.sp,
                                color: AppColors.primary,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded),
                            Text(
                              "Installation",
                              style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.body,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "TV Wall Mount Installation",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 22.sp,
                            color: AppColors.heading,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$500",
                              style: TextStyle(
                                fontFamily: Typo.bold,
                                fontSize: 20.sp,
                                color: AppColors.primary,
                              ),
                            ),
                            Text(
                              "10% off",
                              style: TextStyle(
                                fontFamily: Typo.semiBold,
                                fontSize: 14.sp,
                                color: AppColors.body,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Duration",
                              style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.heading,
                              ),
                            ),
                            Text(
                              "01 Hour",
                              style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Rating",
                              style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.heading,
                              ),
                            ),
                            SvgPicture.asset(AssetsUrl.star),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.body,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: Spacing.screenPadding.copyWith(top: 172.h),
              child: Column(
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                      fontFamily: Typo.semiBold,
                      fontSize: 18.sp,
                      color: AppColors.heading,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                    style: TextStyle(
                      fontFamily: Typo.regular,
                      fontSize: 14.sp,
                      color: AppColors.body,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
