class ServiceDataModel {
  String? category;
  String? img;
  int? price;
  double? rating;
  String? title;
  String? provider;

  ServiceDataModel(
      {this.category,
      this.img,
      this.price,
      this.rating,
      this.title,
      this.provider});

  ServiceDataModel.fromJson(Map<String, dynamic> json) {
    if (json["category"] is String) {
      category = json["category"];
    }
    if (json["img"] is String) {
      img = json["img"];
    }
    if (json["price"] is int) {
      price = json["price"];
    }
    if (json["rating"] is double) {
      rating = json["rating"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["provider"] is String) {
      provider = json["provider"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["category"] = category;
    _data["img"] = img;
    _data["price"] = price;
    _data["rating"] = rating;
    _data["title"] = title;
    _data["provider"] = provider;
    return _data;
  }
}
