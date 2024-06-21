class BookingCardModel {
  String? image;
  String? serviceName;
  int? bookingId;
  int? price;
  int? discount;
  String? date;
  String? time;
  String? providerName;
  String? paymentMode;
  String? status;

  BookingCardModel(
      {this.image,
      this.serviceName,
      this.bookingId,
      this.price,
      this.discount,
      this.date,
      this.time,
      this.providerName,
      this.paymentMode,
      this.status});

  BookingCardModel.fromJson(Map<String, dynamic> json) {
    if (json["image"] is String) {
      image = json["image"];
    }
    if (json["serviceName"] is String) {
      serviceName = json["serviceName"];
    }
    if (json["bookingId"] is int) {
      bookingId = json["bookingId"];
    }
    if (json["price"] is int) {
      price = json["price"];
    }
    if (json["discount"] is int) {
      discount = json["discount"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["time"] is String) {
      time = json["time"];
    }
    if (json["providerName"] is String) {
      providerName = json["providerName"];
    }
    if (json["paymentMode"] is String) {
      paymentMode = json["paymentMode"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["image"] = image;
    _data["serviceName"] = serviceName;
    _data["bookingId"] = bookingId;
    _data["price"] = price;
    _data["discount"] = discount;
    _data["date"] = date;
    _data["time"] = time;
    _data["providerName"] = providerName;
    _data["paymentMode"] = paymentMode;
    _data["status"] = status;
    return _data;
  }
}
