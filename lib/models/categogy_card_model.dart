class CategoryCardModel {
  final String image;
  final String category;
  final int price;
  final double rating;
  final String serviceName;
  final String provider;

  CategoryCardModel({
    required this.image,
    required this.category,
    required this.price,
    required this.rating,
    required this.serviceName,
    required this.provider,
  });

  factory CategoryCardModel.fromJson(Map<String, dynamic> json) {
    return CategoryCardModel(
      image: json['image'],
      category: json['category'],
      price: json['price'],
      rating: json['rating'],
      serviceName: json['serviceName'],
      provider: json['provider'],
    );
  }
}
