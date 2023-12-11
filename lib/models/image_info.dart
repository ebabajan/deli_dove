
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