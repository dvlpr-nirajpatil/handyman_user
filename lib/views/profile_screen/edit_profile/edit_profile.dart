import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  static String id = "EditProfile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: Text("Edit Profile"),
      ),
      body: Container(
        padding: Spacing.screenPadding.copyWith(top: 40.h),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 60.r,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: AppColors.primary,
                    child: SvgPicture.asset(AssetsUrl.camera),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Full Name"),
                  suffixIcon: Image.asset(AssetsUrl.profile)),
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Email"),
                  suffixIcon: Image.asset(AssetsUrl.mail)),
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Contact Number"),
                  suffixIcon: Image.asset(AssetsUrl.phone)),
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Select Country"),
                  suffixIcon: SvgPicture.asset(
                    AssetsUrl.arrowDown,
                    fit: BoxFit.scaleDown,
                  )),
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text("1901 Thornridge Cir. Shiloh, Hawaii"),
                  suffixIcon: SvgPicture.asset(
                    AssetsUrl.location,
                    fit: BoxFit.scaleDown,
                  )),
            ),
            SizedBox(
              height: 40.h,
            ),
            FilledButton(onPressed: () {}, child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
