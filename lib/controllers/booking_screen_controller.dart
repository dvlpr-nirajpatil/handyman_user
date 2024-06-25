import 'package:flutter/material.dart';
import 'package:handyman_user/models/booking_card_model.dart';
import 'package:handyman_user/services/request_category.dart';

class BookingScreenController with ChangeNotifier {
  List<BookingCardModel> allBookings = [];
  List<BookingCardModel> availableBookings = [];
  String bookingStatus = "All";

  BookingScreenController() {
    loadAndFilterBookings();
  }

  Future<void> loadAndFilterBookings() async {
    allBookings = await loadBookings();
    filterBooking();
  }

  void filterBooking() {
    if (bookingStatus == "All") {
      availableBookings = allBookings;
    } else if (bookingStatus == "Pending") {
      availableBookings = allBookings
          .where((booking) => booking.status!.toLowerCase() == "pending")
          .toList();
    } else if (bookingStatus == "Completed") {
      availableBookings = allBookings
          .where((booking) => booking.status!.toLowerCase() == "completed")
          .toList();
    } else if (bookingStatus == "On Going") {
      availableBookings = allBookings
          .where((booking) => booking.status!.toLowerCase() == "ongoing")
          .toList();
    }
    notifyListeners();
  }

  void setBookingStatus(String status) {
    bookingStatus = status;
    filterBooking();
  }
}
