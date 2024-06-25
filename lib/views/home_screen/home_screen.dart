import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';
import 'package:handyman_user/models/service_data_model.dart';
import 'package:handyman_user/views/home_screen/book_service_step_one.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    VxSwiper swiper = VxSwiper.builder(
      itemCount: 3,
      autoPlay: true,
      viewportFraction: 1.0,
      height: 250.h,
      itemBuilder: (context, index) {
        return Image.asset(
          AssetsUrl.swiper,
          fit: BoxFit.fill,
        );
      },
    );

    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            //swiper elements
            Stack(
              clipBehavior: Clip.none,
              children: [
                swiper,
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
                ),
                Positioned(
                  top: 225.h,
                  left: 35.w,
                  child: SizedBox(
                    width: 269.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          fillColor: AppColors.scaffoldBackgroundColor,
                          prefixIcon: SvgPicture.asset(
                            AssetsUrl.location,
                            fit: BoxFit.scaleDown,
                          ),
                          suffixIcon: SvgPicture.asset(
                            AssetsUrl.focus,
                            fit: BoxFit.scaleDown,
                          ),
                          hintText: "1901 Thornridge Cir. Shiloh...",
                          hintStyle: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 12.sp,
                          )),
                    ),
                  ),
                ),
                Positioned(
                  top: 225.h,
                  left: 320.w,
                  child: Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: AppColors.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      AssetsUrl.search,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
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
                        "View All",
                        style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: AppColors.body),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  GridView.builder(
                    padding: EdgeInsets.all(0),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 109,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        crossAxisCount: 3),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return categoryGridTile();
                    },
                  ),
                  SizedBox(
                    height: 39.h,
                  ),
                ],
              ),
            ),

            //services
            Container(
              width: double.infinity,
              height: 400.h,
              color: AppColors.purpleBackgroundColor,
              padding: EdgeInsets.only(left: 20.w, top: 24.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Services",
                        style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 18.sp,
                            color: AppColors.heading),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "View All",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.body),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),

                  //card
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        3,
                        (index) => ServiceListCard(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // swiper
            Spacing.heightBox(20),
            VxSwiper.builder(
              itemCount: 3,
              autoPlay: true,
              viewportFraction: 1.0,
              height: 179.h,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    AssetsUrl.cleaning,
                    fit: BoxFit.fill,
                  ),
                );
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured",
                    style: TextStyle(
                        fontFamily: Typo.medium,
                        fontSize: 18.sp,
                        color: AppColors.heading),
                  ),
                  Text(
                    "Veiw All",
                    style: TextStyle(
                        fontFamily: Typo.medium,
                        fontSize: 14.sp,
                        color: AppColors.body),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  2,
                  (index) => Stack(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              AssetsUrl.fixingTv,
                              width: 157.w,
                              height: 100.h,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            // height: 166.h,
                            width: 157.w,
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 15),
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RatingBar.builder(
                                  itemPadding: EdgeInsets.only(right: 4),
                                  itemCount: 5,
                                  initialRating: 5,
                                  itemSize: 10.w,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return SvgPicture.asset(AssetsUrl.star);
                                  },
                                  onRatingUpdate: (double value) {
                                    print(value);
                                  },
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  "Fixing TV Wire...",
                                  style: TextStyle(
                                      fontFamily: Typo.medium,
                                      fontSize: 14.sp,
                                      color: AppColors.heading),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      AssetsUrl.worker,
                                      width: 25.w,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "Wade Warren",
                                      style: TextStyle(
                                          fontFamily: Typo.medium,
                                          fontSize: 12.sp,
                                          color: AppColors.body),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                      //on top
                      Positioned(
                        top: 10.h,
                        left: 10.w,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "FIXING",
                            style: TextStyle(
                                fontFamily: Typo.semiBold,
                                fontSize: 10.sp,
                                color: AppColors.primary),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 86.h,
                        right: 9.w,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 2, color: Colors.white),
                          ),
                          child: Text(
                            "\$150",
                            style: TextStyle(
                                fontFamily: Typo.regular,
                                fontSize: 12.sp,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
              color: AppColors.primary,
              child: Column(
                children: [
                  Image.asset(
                    AssetsUrl.stars,
                    width: 207.w,
                    height: 48.h,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Introducing Customer Rating",
                    style: TextStyle(
                        fontFamily: Typo.medium,
                        fontSize: 18.sp,
                        color: AppColors.scaffoldBackgroundColor),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  FilledButton(
                    style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: AppColors.scaffoldBackgroundColor,
                        minimumSize: Size(140.w, 32.h)),
                    onPressed: () {},
                    child: Text(
                      "See Your Rating",
                      style: TextStyle(
                          fontFamily: Typo.medium,
                          fontSize: 14,
                          color: AppColors.primary),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container categoryGridTile() {
    return Container(
      height: 109.h,
      width: 98.w,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
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
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                  child: Text(
                "Plumber",
                style: TextStyle(fontFamily: Typo.medium, fontSize: 12.sp),
              )),
            ),
          )
        ],
      ),
    );
  }
}

class ServiceListCard extends StatelessWidget {
  ServiceListCard({super.key, model});

  ServiceDataModel? model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).goNamed(BookingStepOne.id),
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Image.asset(
                    AssetsUrl.paintingServices,
                    width: 280.w,
                    height: 145.h,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  // height: 166.h,
                  width: 280.w,
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingBar.builder(
                        itemPadding: EdgeInsets.only(right: 6),
                        itemCount: 5,
                        initialRating: 5,
                        itemSize: 12.w,
                        itemBuilder: (BuildContext context, int index) {
                          return SvgPicture.asset(AssetsUrl.star);
                        },
                        onRatingUpdate: (double value) {
                          print(value);
                        },
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Text(
                        "Painting For Beautiful \nHomes..",
                        style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 16.sp,
                            color: AppColors.heading),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Row(
                        children: [
                          Image.asset(AssetsUrl.worker),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Wade Warren",
                            style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.body),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

            //on top
            Positioned(
              top: 16.h,
              left: 14.w,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "PAINTING",
                  style: TextStyle(
                      fontFamily: Typo.semiBold,
                      fontSize: 10.sp,
                      color: AppColors.primary),
                ),
              ),
            ),
            Positioned(
              top: 131.h,
              right: 13.w,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 3, color: Colors.white),
                ),
                child: Text(
                  "\$150",
                  style: TextStyle(
                      fontFamily: Typo.semiBold,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
