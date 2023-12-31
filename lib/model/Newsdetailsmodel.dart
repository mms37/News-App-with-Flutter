import 'dart:convert';
import 'dart:ffi';

class Newsdetailsmodel {
  int id;
  String? detailname;
  int nbcategoryitemmodel;
  String? title;
  DateTime date;
  String? image;
  Bool isbookmark;
  DateTime time;
  int comment;

  Newsdetailsmodel({
    required this.id,
    required this.detailname,
    required this.nbcategoryitemmodel,
    required this.title,
    required this.date,
    required this.image,
    required this.isbookmark,
    required this.time,
    required this.comment,
  });

  factory Newsdetailsmodel.fromSql(List<dynamic> row) {
    return Newsdetailsmodel(
      id: row[0],
      detailname: row[1],
      nbcategoryitemmodel: row[2],
      title: row[3],
      date: row[4],
      image: row[5],
      isbookmark: row[6],
      time: row[7],
      comment: row[8],
    );
  }

  factory Newsdetailsmodel.fromMap(Map<String, dynamic> map) {
    return Newsdetailsmodel(
      id: map['id'],
      detailname: map['detailname'],
      nbcategoryitemmodel: map['nbcategoryitemmodel'],
      title: map['title'],
      date: map['date'],
      image: map['image'],
      isbookmark: map['isbookmark'],
      time: map['time'],
      comment: map['comment'],
    );
  }

  factory Newsdetailsmodel.fromJson(String source) =>
      Newsdetailsmodel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'detailname': detailname,
      'nbcategoryitemmodel': nbcategoryitemmodel,
      'title': title,
      'date': date,
      'image': image,
      'isbookmark': isbookmark,
      'time': time,
      'comment': comment,
    };
  }

  String toJson() => json.encode(toMap());
}
