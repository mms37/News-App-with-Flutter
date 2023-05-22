import 'dart:convert';
import 'dart:ffi';

class Notificationitemmodel {
  int id;
  String? title;
  Bool ison;

  Notificationitemmodel({
    required this.id,
    required this.title,
    required this.ison,
  });

  factory Notificationitemmodel.fromMap(Map<String, dynamic> map) {
    return Notificationitemmodel(
        id: map['id'], title: map['title'], ison: map['ison']);
  }

  factory Notificationitemmodel.fromJson(String source) =>
      Notificationitemmodel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'ison': ison,
    };
  }

  String toJson() => json.encode(toMap());
}
