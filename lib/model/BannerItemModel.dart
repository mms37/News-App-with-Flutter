import 'dart:convert';

class BannerItemModel {
  int id;
  String? image;

  BannerItemModel({
    required this.id,
    required this.image
    });


    factory BannerItemModel.fromMap(Map<String, dynamic> map) {
    return BannerItemModel(
      id: map['id'],
      image: map['image']
    );
  }

  factory BannerItemModel.fromJson(String source) => BannerItemModel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
    };
  }

  String toJson() => json.encode(toMap());
}
