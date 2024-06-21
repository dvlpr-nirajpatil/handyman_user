import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});
  static String id = "ChangePassrord";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password"),
        leading: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: Container(
        padding: Spacing.screenPadding.copyWith(top: 24.h),
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Your new password must be different from previous used password",
              style: TextStyle(
                  fontFamily: Typo.medium,
                  fontSize: 14.sp,
                  color: AppColors.body),
            ),
            SizedBox(
              height: 32.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text("New Password"),
                suffixIcon: Image.asset(AssetsUrl.hide),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Re-Enter Password"),
                suffixIcon: Image.asset(AssetsUrl.show),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            FilledButton(onPressed: () {}, child: Text("Confirm"))
          ],
        ),
      ),
    );
  }
}
