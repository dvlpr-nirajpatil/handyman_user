import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';
import 'package:handyman_user/views/auth_screen/sign_up/sign_up.dart';
import 'package:handyman_user/views/home_screen/home_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String id = "SignInScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: Spacing.screenPadding.copyWith(top: 100.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //welcome text

              "Hello Sara!".text.fontFamily(Typo.medium).size(22.sp).make(),
              SizedBox(
                height: 16.h,
              ),
              "Welcome Back, You Have Been \n Missed For Long Time"
                  .text
                  .fontFamily(Typo.medium)
                  .size(16.sp)
                  .color(AppColors.body)
                  .align(TextAlign.center)
                  .make(),

              HeightBox(80.h),
              //Input fields
              TextFormField(
                decoration: InputDecoration(
                    label: Text(
                      "Email Address",
                      style: TextStyle(
                          fontFamily: Typo.medium,
                          fontSize: 14,
                          color: AppColors.body),
                    ),
                    suffixIcon: Image.asset(AssetsUrl.mail)),
              ),
              HeightBox(24.h),
              TextFormField(
                decoration: InputDecoration(
                    label: Text(
                      "Password",
                      style: TextStyle(
                          fontFamily: Typo.medium,
                          fontSize: 14,
                          color: AppColors.body),
                    ),
                    suffixIcon: Image.asset(AssetsUrl.hide)),
              ),

              Row(
                children: [
                  Checkbox(
                      activeColor: AppColors.primary,
                      value: true,
                      onChanged: (value) {
                        value = true;
                      }),
                  "Remember me"
                      .text
                      .fontFamily(Typo.medium)
                      .size(12.sp)
                      .color(AppColors.body)
                      .make(),
                  Spacer(),
                  "Forgot Password?"
                      .text
                      .fontFamily(Typo.semiBold)
                      .size(12.sp)
                      .color(AppColors.primary)
                      .make(),
                ],
              ),
              HeightBox(40.h),
              //login button
              FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(HomeScreen.id);
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontFamily: Typo.semiBold,
                    fontSize: 18,
                  ),
                ),
              ),
              // HeightBox(5.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Don't have an account?"
                      .text
                      .fontFamily(Typo.medium)
                      .size(14.sp)
                      .color(AppColors.body)
                      .make(),
                  TextButton(
                      onPressed: () {
                        GoRouter.of(context).goNamed(SignUpScreen.id);
                      },
                      child: Text(
                        "Sign Up",
                      )),
                ],
              ),
              HeightBox(90.h),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  "Or Continue With"
                      .text
                      .fontFamily(Typo.medium)
                      .size(14.sp)
                      .color(AppColors.body)
                      .make(),
                  Expanded(
                      child: Divider(
                    indent: 10,
                    endIndent: 10,
                  )),
                ],
              ),
              HeightBox(16.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundColor: AppColors.backgroundColor,
                    child: SvgPicture.asset(AssetsUrl.googleIcon),
                  ),
                  WidthBox(20.w),
                  CircleAvatar(
                    radius: 25.r,
                    backgroundColor: AppColors.backgroundColor,
                    child: SvgPicture.asset(AssetsUrl.phoneHighlight),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
