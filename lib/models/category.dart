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
 *  Image Info
 */
class ImageInfo {
  final int id;
  final DateTime dateCreated;
  final DateTime dateModified;
  final String src;
  final String name;
  final String alt;

  ImageInfo({
    required this.id,
    required this.dateCreated,
    required this.dateModified,
    required this.src,
    required this.name,
    required this.alt,
  });

  factory ImageInfo.fromJson(Map<String, dynamic> json) {
    return ImageInfo(
      id: json['id'],
      dateCreated: DateTime.parse(json['date_created']),
      dateModified: DateTime.parse(json['date_modified']),
      src: json['src'],
      name: json['name'],
      alt: json['alt'],
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