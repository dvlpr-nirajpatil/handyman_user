import 'package:flutter/material.dart';
import 'package:handyman_user/consts/app_lists.dart';
import 'package:handyman_user/models/categogy_card_model.dart';

class CategoryScreenController extends ChangeNotifier {
  String category = "All";

  // get updateCategogy => null;

  List<CategogyCardModel> availableCategory = AppLists.categoryCardList;

  updateCategogy(value) {
    category = value;
    notifyListeners();
  }

  filterCategory() {
    if (category == "All") {
      availableCategory = AppLists.categoryCardList;
    } else if (category == "Wall Painting") {
      availableCategory = AppLists.categoryCardList
          .where((value) => value.category == "wallPainting")
          .toList();
    } else if (category == "Home Painting") {
      availableCategory = AppLists.categoryCardList
          .where((value) => value.category == "homePainting")
          .toList();
    }
    notifyListeners();
  }
}
