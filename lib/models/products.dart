import 'package:deli_dove/models/image_info.dart';
class Products {
  final int id;
  final String name;
  final String slug;
  final String type;
  final String status;
  final String description;
  final String shortDescription;
  final String sku;
  final String price;
  final String regularPrice;
  final String salePrice;
  final bool onSale;
  final bool purchasable;
  final int totalSales;
  final bool virtual;
  final bool downloadable;
  final List<String> categories;
  final List<String> tags;
  final List<String> images;
   //final ImageInfo? images;
  // ... add more fields as needed

  Products({
    required this.id,
    required this.name,
    required this.slug,
    required this.type,
    required this.status,
    required this.description,
    required this.shortDescription,
    required this.sku,
    required this.price,
    required this.regularPrice,
    required this.salePrice,
    required this.onSale,
    required this.purchasable,
    required this.totalSales,
    required this.virtual,
    required this.downloadable,
    required this.categories,
    required this.tags,
    required this.images,
    // ... initialize more fields as needed
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
      type: json['type'],
      status: json['status'],
      description: json['description'],
      shortDescription: json['short_description'],
      sku: json['sku'],
      price: json['price'],
      regularPrice: json['regular_price'],
      salePrice: json['sale_price'],
      onSale: json['on_sale'],
      purchasable: json['purchasable'],
      totalSales: json['total_sales'],
      virtual: json['virtual'],
      downloadable: json['downloadable'],
      categories: List<String>.from(json['categories'].map((c) => c['name'])),
      tags: List<String>.from(json['tags'].map((t) => t['name'])),
      images: List<String>.from(json['images'].map((image) => image['src'])),
      // ... map more fields as needed
    );
  }

  // The toJson method can be implemented similarly, converting all the properties back to a JSON-compatible format.
}