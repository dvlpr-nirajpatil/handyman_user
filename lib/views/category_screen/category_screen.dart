import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/consts/color_pallet.dart';
import 'package:handyman_user/consts/spacing.dart';
import 'package:handyman_user/consts/typography.dart';
import 'package:handyman_user/views/category_screen/category_detail/category_details_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  static String id = "CategoryScreen";
  static List images = [
    AssetsUrl.plumber,
    AssetsUrl.smartHome,
    AssetsUrl.painter,
    AssetsUrl.pestControl,
    AssetsUrl.carpenter,
    AssetsUrl.security,
    AssetsUrl.acRepair,
    AssetsUrl.salon,
  ];
  static List name = [
    "Plumber",
    "Smart Home",
    "Painter",
    "Pest Control",
    "Carpenter",
    "Security",
    "AC Repair",
    "Salon",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
            )),
        backgroundColor: AppColors.primary,
        title: Text(
          "Category",
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: Spacing.screenPadding.copyWith(top: 20.h),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 174,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              crossAxisCount: 2),
          itemCount: 8,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                GoRouter.of(context).goNamed(CategoryDetailsScreen.id);
              },
              child: Container(
                height: 109.h,
                width: 98.w,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.borderColor),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.purpleBackgroundColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r)),
                        ),
                        child: SvgPicture.asset(
                          images[index],
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                          child: Text(
                        name[index],
                        style:
                            TextStyle(fontFamily: Typo.medium, fontSize: 16.sp),
                      )),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
