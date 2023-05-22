import 'dart:convert';
import 'dart:ffi';

class Profilemodel {
  int id;
  String title;
  int nblanguageitemmodel;
  int nbnotificationitemmodel;
  int n_b_profile_model;

  Profilemodel({
    required this.id,
    required this.title,
    required this.nblanguageitemmodel,
    required this.nbnotificationitemmodel,
    required this.n_b_profile_model,
  });

  factory Profilemodel.fromMap(Map<String, dynamic> map) {
    return Profilemodel(
      id: map['id'],
      title: map['title'],
      nblanguageitemmodel: map['nblanguageitemmodel'],
      nbnotificationitemmodel: map['nbnotificationitemmodel'],
      n_b_profile_model: map['n_b_profile_model'],
    );
  }

  factory Profilemodel.fromJson(String source) =>
      Profilemodel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'nblanguageitemmodel': nblanguageitemmodel,
      'nbnotificationitemmodel': nbnotificationitemmodel,
      'n_b_profile_model': n_b_profile_model,
    };
  }

  String toJson() => json.encode(toMap());
}
