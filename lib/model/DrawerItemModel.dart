import 'dart:convert';

class DrawerItemModel  {
  int id;
  String? title;

  DrawerItemModel ({
    required this.id,
    required this.title
    });


    factory DrawerItemModel .fromMap(Map<String, dynamic> map) {
    return DrawerItemModel (
      id: map['id'],
      title: map['title']
    );
  }

  factory DrawerItemModel .fromJson(String source) => DrawerItemModel .fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
    };
  }

  String toJson() => json.encode(toMap());
}
