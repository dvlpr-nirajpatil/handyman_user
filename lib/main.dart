import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handyman_user/consts/app_routes.dart';
import 'package:handyman_user/consts/app_theme.dart';
import 'package:handyman_user/controllers/booking_screen_controller.dart';
import 'package:handyman_user/controllers/category_screen_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => BookingScreenController()),
          ChangeNotifierProvider(create: (_) => CategoryScreenController()),
        ],
        child: MaterialApp.router(
          routerConfig: AppRoutes.router,
          theme: AppTheme.theme,
        ),
      ),
    );
  }
}
