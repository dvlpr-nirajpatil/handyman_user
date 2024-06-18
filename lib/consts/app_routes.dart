import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handyman_user/shared_widget/bottomNavigationbar.dart';
import 'package:handyman_user/views/auth_screen/sign_in/sign_in.dart';
import 'package:handyman_user/views/auth_screen/sign_up/sign_up.dart';
import 'package:handyman_user/views/booking_screen/booking_screen.dart';
import 'package:handyman_user/views/category_screen/category_details_screen.dart';
import 'package:handyman_user/views/category_screen/category_screen.dart';
import 'package:handyman_user/views/category_screen/service_filter.dart';
import 'package:handyman_user/views/chat_screen/chat_screen.dart';
import 'package:handyman_user/views/home_screen/home_screen.dart';
import 'package:handyman_user/views/profile_screen/profile_screen.dart';
import 'package:handyman_user/views/splash_screen/splash_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRoutes {
  static GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/',
        name: SplashScreen.id,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: '/auth',
        name: SignInScreen.id,
        builder: (context, state) => SignInScreen(),
        routes: [
          GoRoute(
            path: 'signup',
            name: SignUpScreen.id,
            builder: (context, state) => SignUpScreen(),
          ),
        ],
      ),
      ShellRoute(
        navigatorKey: GlobalKey<NavigatorState>(),
        builder: (context, state, child) {
          return Scaffold(
              body: child,
              bottomNavigationBar: BottomNav(
                  //  calculateScreenIndex(state),
                  ));
        },
        routes: [
          GoRoute(
            path: '/homescreen',
            name: HomeScreen.id,
            builder: (context, state) => HomeScreen(),
          ),
          GoRoute(
            path: '/bookingscreen',
            name: BookingScreen.id,
            builder: (context, state) => BookingScreen(),
          ),
          GoRoute(
            path: '/categoryscreen',
            name: CategoryScreen.id,
            builder: (context, state) => CategoryScreen(),
            routes: [
              GoRoute(
                path: 'categorydetailsscreen',
                name: CategoryDetailsScreen.id,
                builder: (context, state) => CategoryDetailsScreen(),
                routes: [
                  GoRoute(
                    path: 'servicefilter',
                    name: ServiceFilter.id,
                    builder: (context, state) => ServiceFilter(),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: '/chatscreen',
            name: ChatScreen.id,
            builder: (context, state) => ChatScreen(),
          ),
          GoRoute(
            path: '/profilescreen',
            name: ProfileScreen.id,
            builder: (context, state) => ProfileScreen(),
          ),
        ],
      ),
    ],
  );
}

// int calculateScreenIndex(GoRouterState state) {
//   final location = state.matchedLocation;

//   if (location.startsWith('/homescreen')) {
//     return 0;
//   }
//   if (location.startsWith('/bookingscreen')) {
//     return 1;
//   }
//   if (location.startsWith('/categoryscreen')) {
//     return 2;
//   }
//   if (location.startsWith('/chatscreen')) {
//     return 3;
//   }
//   if (location.startsWith('/profilescreen')) {
//     return 4;
//   }
//   return -1;
// }
