import 'dart:convert';

class CategoryItemModel {
  int id;
  String? name;

  CategoryItemModel({
    required this.id,
    required this.name
    });


    factory CategoryItemModel.fromMap(Map<String, dynamic> map) {
    return CategoryItemModel(
      id: map['id'],
      name: map['name']
    );
  }

  factory CategoryItemModel.fromJson(String source) => CategoryItemModel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': name,
    };
  }

  String toJson() => json.encode(toMap());
}
