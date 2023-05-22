import 'dart:convert';
import 'dart:ffi';

class LanguageItemModel {
  int id;
  Float price;
  String? timeperiod;
  String? text;
  String? description;

  LanguageItemModel({
    required this.id,
    required this.price,
    required this.timeperiod,
    required this.text,
    required this.description,
  });

  factory LanguageItemModel.fromMap(Map<String, dynamic> map) {
    return LanguageItemModel(
        id: map['id'],
        price: map['price'],
        timeperiod: map['timeperiod'],
        text: map['text'],
        description: map['description']);
  }

  factory LanguageItemModel.fromJson(String source) =>
      LanguageItemModel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'price': price,
      'timeperiod': timeperiod,
      'text': text,
      'description': description,
    };
  }

  String toJson() => json.encode(toMap());
}
