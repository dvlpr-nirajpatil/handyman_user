import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handyman_user/consts/assets_url.dart';
import 'package:handyman_user/views/booking_screen/booking_screen.dart';
import 'package:handyman_user/views/category_screen/category_screen.dart';
import 'package:handyman_user/views/chat_screen/chat_screen.dart';
import 'package:handyman_user/views/home_screen/home_screen.dart';
import 'package:handyman_user/views/profile_screen/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
  });

  @override
  State<BottomNav> createState() => _BottomNavState();
}

var index = 0;

List screens = [
  HomeScreen.id,
  BookingScreen.id,
  CategoryScreen.id,
  ChatScreen.id,
  ProfileScreen.id,
];

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      currentIndex: index,
      onTap: (value) {
        index = value;
        context.goNamed(screens[index]);
        setState(() {});
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            AssetsUrl.home,
          ),
          label: "Home",
          activeIcon: Image.asset(AssetsUrl.homeSelected),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AssetsUrl.ticket),
          label: "Booking",
          activeIcon: Image.asset(AssetsUrl.ticketSelected),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AssetsUrl.category),
          label: "Category",
          activeIcon: Image.asset(AssetsUrl.categorySelected),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AssetsUrl.chat),
          label: "Chat",
          activeIcon: Image.asset(AssetsUrl.chatSelected),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AssetsUrl.profile),
          label: "Profile",
          activeIcon: Image.asset(AssetsUrl.profileSelected),
        ),
      ],
    );
  }
}
