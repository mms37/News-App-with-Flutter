import 'dart:convert';
import 'dart:ffi';

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
  int n_b_followers_item_model;

  Profilemodel({
    required this.id,
    required this.name,
    required this.nbnewsdetailsmodel,
    required this.username,
    required this.email,
    required this.password,
    required this.image,
    required this.followers,
    required this.following,
    required this.n_b_followers_item_model,
  });

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
      n_b_followers_item_model: map['n_b_followers_item_model'],
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
      'n_b_followers_item_model': n_b_followers_item_model,
    };
  }

  String toJson() => json.encode(toMap());
}
