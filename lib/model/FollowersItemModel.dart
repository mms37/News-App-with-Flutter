import 'dart:convert';

class FollowersItemModel  {
  int id;
  String? image;
  String? name;
  int noofarticle;

  FollowersItemModel ({
    required this.id,
    required this.image,
    required this.name,
    required this.noofarticle,
    });

    factory FollowersItemModel.fromSql(List<dynamic> row) {
    return FollowersItemModel (
      id: row[0],
      image: row[1],
      name: row[2],
      noofarticle: row[3]
    );
  }


    factory FollowersItemModel.fromMap(Map<String, dynamic> map) {
    return FollowersItemModel (
      id: map['id'],
      image: map['image'],
      name: map['name'],
      noofarticle: map['noofarticle']
    );
  }

  factory FollowersItemModel.fromJson(String source) => FollowersItemModel .fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'noofarticle': noofarticle,
    };
  }

  String toJson() => json.encode(toMap());
}
