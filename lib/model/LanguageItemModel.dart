import 'dart:convert';

class LanguageItemModel  {
  int id;
  String? name;
  String? text;

  LanguageItemModel ({
    required this.id,
    required this.name,
    required this.text,
    });


    factory LanguageItemModel .fromMap(Map<String, dynamic> map) {
    return LanguageItemModel (
      id: map['id'],
      name: map['name'],
      text: map['text']
    );
  }

  factory LanguageItemModel .fromJson(String source) => LanguageItemModel .fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'text': text,
    };
  }

  String toJson() => json.encode(toMap());
}
