import 'dart:convert';

class LanguageItemModel  {
  int id;
  String? name;
  String? image;

  LanguageItemModel ({
    required this.id,
    required this.name,
    required this.image,
    });


    factory LanguageItemModel.fromSql(List<dynamic> row) {
    return LanguageItemModel (
      id: row[0],
      name: row[1],
      image: row[2]
    );  
  }

    factory LanguageItemModel.fromMap(Map<String, dynamic> map) {
    return LanguageItemModel (
      id: map['id'],
      name: map['name'],
      image: map['image']
    );
  }

  factory LanguageItemModel.fromJson(String source) => LanguageItemModel .fromMap(json.decode(source));
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }

  String toJson() => json.encode(toMap());
}
