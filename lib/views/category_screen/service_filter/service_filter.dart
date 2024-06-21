import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';

class ServiceFilter extends StatelessWidget {
  const ServiceFilter({super.key});

  static String id = "ServiceFilter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
            )),
        backgroundColor: AppColors.primary,
        title: Text(
          "Filter By",
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.remove,
                color: AppColors.scaffoldBackgroundColor,
              ))
        ],
      ),
      body: Container(
        padding: Spacing.screenPadding.copyWith(top: 20.h),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
              decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Category Name List",
                    style: TextStyle(fontFamily: Typo.medium, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Painting",
                            style: TextStyle(
                                fontFamily: Typo.medium, fontSize: 14.sp),
                          ),
                          Text(
                            "33 Services",
                            style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 12.sp,
                                color: AppColors.body),
                          ),
                        ],
                      ),
                      Spacer(),
                      Radio(value: 1, groupValue: 0, onChanged: (value) {})
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Divider(),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Painting",
                            style: TextStyle(
                                fontFamily: Typo.medium, fontSize: 14.sp),
                          ),
                          Text(
                            "33 Services",
                            style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 12.sp,
                                color: AppColors.body),
                          ),
                        ],
                      ),
                      Spacer(),
                      Radio(value: 0, groupValue: 0, onChanged: (value) {})
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 41.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
              decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rating",
                    style: TextStyle(fontFamily: Typo.medium, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      RatingBar.builder(
                        itemPadding: EdgeInsets.only(right: 4),
                        itemCount: 5,
                        initialRating: 5,
                        itemSize: 17.w,
                        itemBuilder: (BuildContext context, int index) {
                          return SvgPicture.asset(AssetsUrl.star);
                        },
                        onRatingUpdate: (double value) {
                          print(value);
                        },
                      ),
                      Spacer(),
                      Text(
                        "5.0",
                        style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: AppColors.body),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 31.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
              decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(fontFamily: Typo.medium, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  RangeSlider(
                    min: 100,
                    max: 3000,
                    labels: RangeLabels("400", "2000"),
                    onChanged: (value) {},
                    values: RangeValues(400, 2000),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
