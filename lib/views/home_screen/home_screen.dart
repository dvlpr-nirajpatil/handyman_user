import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //swiper elements

            Stack(
              children: [
                VxSwiper.builder(
                  itemCount: 3,
                  autoPlay: true,
                  viewportFraction: 1,
                  height: 250.h,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      AssetsUrl.swiper,
                      fit: BoxFit.fill,
                    );
                  },
                ),
                Positioned(
                  right: 20.w,
                  top: 20.h,
                  child: CircleAvatar(
                      radius: 18.r,
                      backgroundColor: AppColors.scaffoldBackgroundColor,
                      child: SvgPicture.asset(
                        AssetsUrl.bell,
                        width: 16.w,
                      )),
                )
              ],
            ),

            // categories
            Container(
              padding: Spacing.screenPadding.copyWith(top: 65.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 18.sp,
                            color: AppColors.heading),
                      ),
                      Spacer(),
                      Text(
                        "Veiw All",
                        style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: AppColors.body),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 109,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        crossAxisCount: 3),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 109.h,
                        width: 98.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.borderColor),
                            borderRadius: BorderRadius.circular(12.r)),
                        child: Column(
                          children: [
                            Container(
                              height: 75.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.purpleBackgroundColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.r),
                                    topRight: Radius.circular(12.r)),
                              ),
                              child: SvgPicture.asset(
                                AssetsUrl.plumber,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Container(
                              height: 30.h,
                              child: Center(
                                  child: Text(
                                "Plumber",
                                style: TextStyle(
                                    fontFamily: Typo.medium, fontSize: 12.sp),
                              )),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
