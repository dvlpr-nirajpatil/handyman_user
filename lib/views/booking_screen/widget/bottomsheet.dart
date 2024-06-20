import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';

Widget bottomSheetBookingTracingWidget(
    {time, date, title, description, color, isLine = true}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        children: [
          Text(
            "$time",
            style: TextStyle(
                fontSize: 16.sp,
                fontFamily: Typo.medium,
                color: AppColors.body),
          ),
          Spacing.heightbox(8),
          Text(
            "$date",
            style: TextStyle(
                fontSize: 14.sp,
                fontFamily: Typo.medium,
                color: AppColors.heading),
          ),
        ],
      ),
      Spacing.,
      Column(
        children: [
          CircleAvatar(
            radius: 6,
            backgroundColor: color,
          ),
          Spacing.heightbox(8),
          isLine
              ? DottedLine(
                  direction: Axis.vertical,
                  alignment: WrapAlignment.center,
                  lineLength: 60.h,
                  dashColor: color,
                  dashGapColor: Colors.transparent,
                  dashGapLength: 4,
                )
              : SizedBox(),
          Spacing.heightbox(10),
        ],
      ),
      Spacing.widthbox(24),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$title",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: Typo.medium,
                  color: AppColors.HeadingColor),
            ),
            Spacing.heightbox(8),
            Text(
              overflow: TextOverflow.visible,
              "$description",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: Typo.medium,
                  color: AppColors.graytext),
            )
          ],
        ),
      ),
    ],
  );
}
