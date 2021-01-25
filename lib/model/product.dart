import 'dart:convert';

class Product {
  final String imagePath;
  final String description;
  final String price;
  final String rating;
  final List<String> images;

  Product(
      this.imagePath, this.description, this.price, this.rating, this.images);

  Map<String, dynamic> toMap() {
    return {
      'imagePath': imagePath,
      'description': description,
      'price': price,
      'rating': rating,
      'images': images,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Product(
      map['imagePath'],
      map['description'],
      map['price'],
      map['rating'],
      List<String>.from(map['images']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
