
class ProductModel {
  int id;
  String image;
  String title;
  double price;
  int count;
  String description;
  double rating;

  ProductModel({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.count,
    required this.description,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    image: json["image"],
    title: json["title"],
    price: json["price"],
    count: json["count"],
    description: json["description"],
    rating: json["rating"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "title": title,
    "price": price,
    "count": count,
    "description" : description,
    "rating": rating,
  };
}