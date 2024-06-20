import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';

class BookingService extends StatelessWidget {
  const BookingService({super.key});

  static String id = 'BookingService';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
            )),
        title: Text(
          "Pending",
        ),
        actions: [
          Text(
            "Check Status",
            style: TextStyle(
                color: AppColors.scaffoldBackgroundColor,
                fontFamily: Typo.medium,
                fontSize: 14.sp),
          ),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          padding: Spacing.screenPadding.copyWith(top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Booking ID",
                    style: TextStyle(
                        fontFamily: Typo.medium,
                        fontSize: 18.sp,
                        color: AppColors.body),
                  ),
                  Text(
                    "#123",
                    style: TextStyle(
                        fontFamily: Typo.semiBold,
                        fontSize: 18.sp,
                        color: AppColors.primary),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Divider(),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ApprtMent Cleaning",
                        style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 18.sp,
                            color: AppColors.heading),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Date:",
                            style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.body),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "26 Jan, 2022",
                            style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.heading),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Time:",
                            style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.body),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "04:00 PM",
                            style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.heading),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(
                    AssetsUrl.fixingTv,
                    width: 80.w,
                    height: 80.h,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Duration",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 16.sp,
                    color: AppColors.heading),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Service taken Time:",
                      style: TextStyle(
                          fontFamily: Typo.medium,
                          fontSize: 14.sp,
                          color: AppColors.heading),
                    ),
                    Text(
                      "35 Min",
                      style: TextStyle(
                          fontFamily: Typo.medium,
                          fontSize: 14.sp,
                          color: AppColors.body),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "About Handyman",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 16.sp,
                    color: AppColors.heading),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24.w),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          child: Image.asset(
                            AssetsUrl.worker,
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Justine boyle",
                              style: TextStyle(
                                  fontFamily: Typo.medium,
                                  fontSize: 18.sp,
                                  color: AppColors.heading),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              "Cleaning Expert",
                              style: TextStyle(
                                  fontFamily: Typo.medium,
                                  fontSize: 14.sp,
                                  color: AppColors.body),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            RatingBar.builder(
                              itemPadding: EdgeInsets.only(right: 4),
                              itemCount: 5,
                              initialRating: 5,
                              itemSize: 16.w,
                              itemBuilder: (BuildContext context, int index) {
                                return SvgPicture.asset(AssetsUrl.star);
                              },
                              onRatingUpdate: (double value) {
                                print(value);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: FilledButton(
                                style: FilledButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AssetsUrl.callingWhite),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      "Call",
                                      style: TextStyle(
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp,
                                          color: AppColors
                                              .scaffoldBackgroundColor),
                                    )
                                  ],
                                ))),
                        SizedBox(
                          width: 12.w,
                        ),
                        Expanded(
                          child: FilledButton(
                            style: FilledButton.styleFrom(
                                backgroundColor: AppColors.backgroundColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AssetsUrl.chatBlack),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Chat",
                                  style: TextStyle(
                                      fontFamily: Typo.medium,
                                      fontSize: 14.sp,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Rate Handyman",
                      style: TextStyle(
                          fontFamily: Typo.medium,
                          fontSize: 14.sp,
                          color: AppColors.primary),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),

              Text(
                "About Provider",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 16.sp,
                    color: AppColors.heading),
              ),
              SizedBox(
                height: 8.h,
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24.w),
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          child: Image.asset(
                            AssetsUrl.worker,
                            width: 80.w,
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Leslie Alexxander",
                              style: TextStyle(
                                  fontFamily: Typo.medium,
                                  fontSize: 18.sp,
                                  color: AppColors.heading),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            RatingBar.builder(
                              itemPadding: EdgeInsets.only(right: 4),
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
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AssetsUrl.mailBlack),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "example@gmail.com",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.body),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AssetsUrl.location),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "1901 Thornridge Cir. Shiloh, Hawaii...",
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
                height: 32.h,
              ),

              //pricing
              Text(
                "Price Detail",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 16.sp,
                    color: AppColors.heading),
              ),
              SizedBox(
                height: 8.h,
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.heading),
                        ),
                        Text(
                          "\$120",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.body),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub Total",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.heading),
                        ),
                        Text(
                          "\$120 * 2 = \$240",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.body),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount (5% off)",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.heading),
                        ),
                        Text(
                          "-\$15.12",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.body),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tax",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.heading),
                        ),
                        Text(
                          "\$15.12",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.body),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cupon(AB45789A)",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.heading),
                        ),
                        Text(
                          "-\$10",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: AppColors.body),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount",
                          style: TextStyle(
                              fontFamily: Typo.semiBold,
                              fontSize: 16.sp,
                              color: AppColors.heading),
                        ),
                        Text(
                          "\$255.12",
                          style: TextStyle(
                              fontFamily: Typo.semiBold,
                              fontSize: 16.sp,
                              color: AppColors.body),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reviews",
                    style: TextStyle(
                        fontFamily: Typo.medium,
                        fontSize: 16.sp,
                        color: AppColors.heading),
                  ),
                  Text(
                    "Veiw All",
                    style: TextStyle(
                        fontFamily: Typo.medium,
                        fontSize: 12.sp,
                        color: AppColors.body),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 25,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Donna Bins",
                            style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                                color: AppColors.heading),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "02 Dec",
                            style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 12.sp,
                                color: AppColors.body),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      RatingBar.builder(
                        itemPadding: EdgeInsets.only(right: 4),
                        itemCount: 5,
                        initialRating: 5,
                        itemSize: 16.w,
                        itemBuilder: (BuildContext context, int index) {
                          return SvgPicture.asset(AssetsUrl.star);
                        },
                        onRatingUpdate: (double value) {
                          print(value);
                        },
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        "Amet minim mollit non deserunt\nsit aliqua dolor do amet. ",
                        style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: AppColors.body),
                      )
                    ],
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(
                        fontFamily: Typo.semiBold,
                        fontSize: 12.sp,
                        color: AppColors.primary),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
