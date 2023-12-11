
import 'package:deli_dove/models/image_info.dart';

class ProductCategory {
  final int id;
  final String name;
  final String slug;
  final int parent;
  final String description;
  final String display;
  final ImageInfo? image; // Assuming you have an ImageInfo class for the 'image' property
  final int menuOrder;
  final int count;
  final Links links;

  ProductCategory({
    required this.id,
    required this.name,
    required this.slug,
    required this.parent,
    required this.description,
    required this.display,
    required this.image,
    required this.menuOrder,
    required this.count,
    required this.links,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) {
    return ProductCategory(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
      parent: json['parent'],
      description: json['description'],
      display: json['display'],
      image: json['image'] != null ? ImageInfo.fromJson(json['image']) : null,
      menuOrder: json['menu_order'],
      count: json['count'],
      links: Links.fromJson(json['_links']),
    );
  }
}

/**
 * Links
 */
class Links {
  final List<Link> self;
  final List<Link> collection;

  Links({
    required this.self,
    required this.collection,
  });

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(
      self: (json['self'] as List).map((link) => Link.fromJson(link)).toList(),
      collection: (json['collection'] as List).map((link) => Link.fromJson(link)).toList(),
    );
  }
}

class Link {
  final String href;

  Link({required this.href});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(href: json['href']);
  }
}