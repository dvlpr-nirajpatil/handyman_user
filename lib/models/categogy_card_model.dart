
class CategogyCardModel {
  String? image;
  String? category;
  int? price;
  double? rating;
  String? serviceName;
  String? provider;

  CategogyCardModel({this.image, this.category, this.price, this.rating, this.serviceName, this.provider});

  CategogyCardModel.fromJson(Map<String, dynamic> json) {
    if(json["image"] is String) {
      image = json["image"];
    }
    if(json["category"] is String) {
      category = json["category"];
    }
    if(json["price"] is int) {
      price = json["price"];
    }
    if(json["rating"] is double) {
      rating = json["rating"];
    }
    if(json["serviceName"] is String) {
      serviceName = json["serviceName"];
    }
    if(json["provider"] is String) {
      provider = json["provider"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["image"] = image;
    _data["category"] = category;
    _data["price"] = price;
    _data["rating"] = rating;
    _data["serviceName"] = serviceName;
    _data["provider"] = provider;
    return _data;
  }
}