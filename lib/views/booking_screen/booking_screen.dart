import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';
import 'package:handyman_user/views/booking_screen/booking_service.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({super.key});

  static String id = "BookingScreen";
  List<String> Status = <String>[
    "Pending",
    "Accept",
    "On Going",
    "In Progress",
    "Hold",
    "Rejected",
    "Failed",
    "Cancel",
    "Completed"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_rounded,
            )),
        backgroundColor: AppColors.primary,
        title: Text(
          "Bookings",
        ),
      ),
      body: Container(
        padding: Spacing.screenPadding.copyWith(top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12.r)),
              child: DropdownButton(
                  style: TextStyle(
                      fontFamily: Typo.medium,
                      fontSize: 14.sp,
                      color: AppColors.body),
                  underline: SizedBox(),
                  icon: SvgPicture.asset(AssetsUrl.arrowDown),
                  value: Status.first,
                  isExpanded: true,
                  items: Status.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {}),
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              "Your Pending Booking List",
              style: TextStyle(fontFamily: Typo.medium, fontSize: 18.sp),
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).goNamed(BookingService.id);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(16.w),
                      margin: EdgeInsets.only(bottom: 20.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: AppColors.borderColor),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.r),
                                child: Image.asset(
                                  AssetsUrl.cleaning,
                                  width: 303.w,
                                  height: 130.h,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                top: 10.h,
                                left: 10.w,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Text(
                                    "Pending",
                                    style: TextStyle(
                                        fontFamily: Typo.semiBold,
                                        fontSize: 12.sp,
                                        color:
                                            AppColors.scaffoldBackgroundColor),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Apartment Cleaning",
                                style: TextStyle(
                                    fontFamily: Typo.medium, fontSize: 16.sp),
                              ),
                              Text(
                                "#123",
                                style: TextStyle(
                                    fontFamily: Typo.bold,
                                    fontSize: 18.sp,
                                    color: AppColors.primary),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                          RichText(
                            text: TextSpan(
                              text: '\$124.45',
                              style: TextStyle(
                                  fontFamily: Typo.semiBold,
                                  fontSize: 18.sp,
                                  color: AppColors.primary),
                              children: [
                                TextSpan(
                                  text: " (5 % off)",
                                  style: TextStyle(
                                      fontFamily: Typo.medium,
                                      fontSize: 14.sp,
                                      color: Colors.green),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(24.w),
                            decoration: BoxDecoration(
                                color: AppColors.backgroundColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Date",
                                      style: TextStyle(
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp,
                                          color: AppColors.heading),
                                    ),
                                    Text(
                                      "25 Jan, 2022",
                                      style: TextStyle(
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp,
                                          color: AppColors.body),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp,
                                          color: AppColors.heading),
                                    ),
                                    Text(
                                      "12:30 PM",
                                      style: TextStyle(
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp,
                                          color: AppColors.body),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Provider",
                                      style: TextStyle(
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp,
                                          color: AppColors.heading),
                                    ),
                                    Text(
                                      "Kristin Watson",
                                      style: TextStyle(
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp,
                                          color: AppColors.body),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Payment",
                                      style: TextStyle(
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp,
                                          color: AppColors.heading),
                                    ),
                                    Text(
                                      "Cash",
                                      style: TextStyle(
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp,
                                          color: AppColors.body),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
