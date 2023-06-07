import 'dart:convert';

class Profilemodel {
  int id;
  String name;
  int nbnewsdetailsmodel;
  String username;
  String email;
  String password;
  String image;
  int followers;
  String following;
  int followers2;
  int articlecount;

  Profilemodel({
    required this.id,
    required this.name,
    required this.nbnewsdetailsmodel,
    required this.username,
    required this.email,
    required this.password,
    required this.image,
    required this.followers2,
    required this.articlecount,
    required this.followers,
    required this.following,
  });

  factory Profilemodel.fromSql(List<dynamic> row) {
    return Profilemodel(
      id: row[0],
      name: row[1],
      nbnewsdetailsmodel: row[2],
      username: row[3],
      email: row[4],
      password: row[5],
      image: row[6],
      followers2: row[7],
      articlecount: row[8],
      followers: row[9],
      following: row[10],
    );
  }

  factory Profilemodel.fromMap(Map<String, dynamic> map) {
    return Profilemodel(
      id: map['id'],
      name: map['name'],
      nbnewsdetailsmodel: map['nbnewsdetailsmodel'],
      username: map['username'],
      email: map['email'],
      password: map['password'],
      image: map['image'],
      followers: map['followers'],
      following: map['following'],
      followers2: map['followers2'],
      articlecount: map['articlecount'],
    );
  }

  factory Profilemodel.fromJson(String source) =>
      Profilemodel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'nbnewsdetailsmodel': nbnewsdetailsmodel,
      'username': username,
      'email': email,
      'image': image,
      'password': password,
      'followers': followers,
      'following': following,
      'followers2': followers2,
      'articlecount': articlecount,
    };
  }

  String toJson() => json.encode(toMap());
}
