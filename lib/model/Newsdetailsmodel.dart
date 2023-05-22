import 'dart:convert';
import 'dart:ffi';

class Newsdetailsmodel {
  int id;
  String detailname;
  int nbcategoryitemmodel;
  DateTime date;
  String image;
  Bool isbookmark;
  DateTime time;
  int n_b_comment_item_model;

  Newsdetailsmodel({
    required this.id,
    required this.detailname,
    required this.nbcategoryitemmodel,
    required this.date,
    required this.image,
    required this.isbookmark,
    required this.time,
    required this.n_b_comment_item_model,
  });

  factory Newsdetailsmodel.fromMap(Map<String, dynamic> map) {
    return Newsdetailsmodel(
      id: map['id'],
      detailname: map['detailname'],
      nbcategoryitemmodel: map['nbcategoryitemmodel'],
      date: map['date'],
      image: map['image'],
      isbookmark: map['isbookmark'],
      time: map['time'],
      n_b_comment_item_model: map['n_b_comment_item_model'],
    );
  }

  factory Newsdetailsmodel.fromJson(String source) =>
      Newsdetailsmodel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'detailname': detailname,
      'nbcategoryitemmodel': nbcategoryitemmodel,
      'date': date,
      'image': image,
      'isbookmark': isbookmark,
      'time': time,
      'n_b_comment_item_model': n_b_comment_item_model,
    };
  }

  String toJson() => json.encode(toMap());
}
