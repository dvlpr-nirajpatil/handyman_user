import 'package:flutter/material.dart';
import 'package:handyman_user/models/categogy_card_model.dart';
import 'package:handyman_user/services/request_category.dart';

class CategoryScreenController extends ChangeNotifier {
  String category = "All";
  List<CategoryCardModel> allCategories = [];
  List<CategoryCardModel> availableCategories = [];

  CategoryScreenController() {
    loadAndFilterCategories();
  }

  Future<void> loadAndFilterCategories() async {
    allCategories = await loadCategories();
    filterCategory();
  }

  void updateCategory(String value) {
    category = value;
    filterCategory();
  }

  void filterCategory() {
    if (category == "All") {
      availableCategories = allCategories;
    } else if (category == "Wall Painting") {
      availableCategories = allCategories
          .where((value) => value.category == "wallPainting")
          .toList();
    } else if (category == "Home Painting") {
      availableCategories = allCategories
          .where((value) => value.category == "homePainting")
          .toList();
    }
    notifyListeners();
  }
}
