import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Spacing {
  static EdgeInsets screenPadding = EdgeInsets.symmetric(horizontal: 20);

  static SizedBox heightBox(double value) {
    return SizedBox(
      height: value.h,
    );
  }

  static SizedBox widthBox(double value) {
    return SizedBox(
      width: value.w,
    );
  }
}
