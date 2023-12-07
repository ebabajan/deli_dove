
class ProductCategory {
  final int categoryId;
  final String categoryName;
  final String categoryDes;
  final int productCount;
  int? parent;

  final String image;

  ProductCategory({
    required this.categoryId,
    required this.categoryDes,
    required this.categoryName,
    required this.image,
    required this.productCount,
    this.parent,
  });

  ProductCategory.fromJson(Map<String, dynamic> json, this.categoryId, this.categoryName, this.categoryDes, this.productCount, this.image) {
     ProductCategory(
        categoryId: json['id'],
        categoryDes: json['description'],
        categoryName: json['name'],
        image: json['image'],
        productCount: json['product_count'],
        parent: json['parent']);
  }
}
