import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handyman_user/consts/app_lists.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';
import 'package:handyman_user/controllers/booking_screen_controller.dart';
import 'package:handyman_user/views/booking_screen/booking_service/booking_service.dart';
import 'package:provider/provider.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({super.key});

  static String id = "BookingScreen";

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
        child: Consumer<BookingScreenController>(
            builder: (context, controller, _) {
          return Column(
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
                    value: controller.bookingStatus,
                    isExpanded: true,
                    items: AppLists.bookingStatusList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      controller.updateBookingStatus = value!;
                      controller.filterBooking();
                    }),
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
                  itemCount: controller.availableBookings.length,
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
                                      color: controller.availableBookings[index]
                                                  .status ==
                                              "pending"
                                          ? Colors.red
                                          : controller.availableBookings[index]
                                                      .status ==
                                                  "completed"
                                              ? Colors.green
                                              : Colors.orange,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Text(
                                      "${controller.availableBookings[index].status}",
                                      style: TextStyle(
                                          fontFamily: Typo.semiBold,
                                          fontSize: 12.sp,
                                          color: AppColors
                                              .scaffoldBackgroundColor),
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
                                  "${controller.availableBookings[index].serviceName}",
                                  style: TextStyle(
                                      fontFamily: Typo.medium, fontSize: 16.sp),
                                ),
                                Text(
                                  "#${controller.availableBookings[index].bookingId}",
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
                                text:
                                    '\$${controller.availableBookings[index].price}',
                                style: TextStyle(
                                    fontFamily: Typo.semiBold,
                                    fontSize: 18.sp,
                                    color: AppColors.primary),
                                children: [
                                  TextSpan(
                                    text:
                                        " (${controller.availableBookings[index].discount} % off)",
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
                                        "${controller.availableBookings[index].date}",
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
                                        "${controller.availableBookings[index].time}",
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
                                        "${controller.availableBookings[index].providerName}",
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
                                        "${controller.availableBookings[index].paymentMode}",
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
          );
        }),
      ),
    );
  }
}
