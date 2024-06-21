import 'package:flutter/material.dart';
import 'package:handyman_user/consts/app_lists.dart';
import 'package:handyman_user/models/booking_card_model.dart';

class BookingScreenController extends ChangeNotifier {
  String bookingStatus = "All";

  List<BookingCardModel> availableBookings = AppLists.bookingCardList;

  set updateBookingStatus(String value) {
    bookingStatus = value;
    notifyListeners();
  }

  filterBooking() {
    if (bookingStatus == "All") {
      availableBookings = AppLists.bookingCardList;
    } else if (bookingStatus == "Pending") {
      availableBookings = AppLists.bookingCardList
          .where((value) => value.status == "pending")
          .toList();
    } else if (bookingStatus == "Completed") {
      availableBookings = AppLists.bookingCardList
          .where((value) => value.status == "completed")
          .toList();
    } else if (bookingStatus == "On Going") {
      availableBookings = AppLists.bookingCardList
          .where((value) => value.status == "ongoing")
          .toList();
    }
    notifyListeners();
  }
}
