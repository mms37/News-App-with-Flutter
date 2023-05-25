import 'dart:convert';

class CommandItemModel {
  int id;
  DateTime date;
  DateTime time;
  String message;
  int n_b_profile_model;


  CommandItemModel({
    required this.id,
    required this.date,
    required this.time,
    required this.message,
    required this.n_b_profile_model,
    });


    factory CommandItemModel.fromSql(List<dynamic> row) {
    return CommandItemModel(
      id: row[0],
      date: row[1],
      time: row[2],
      message: row[3],
      n_b_profile_model: row[4]

    );
  }
  
    factory CommandItemModel.fromMap(Map<String, dynamic> map) {
    return CommandItemModel(
      id: map['id'],
      date: map['date'],
      time: map['time'],
      message: map['message'],
      n_b_profile_model: map['n_b_profile_model']

    );
  }

  factory CommandItemModel.fromJson(String source) => CommandItemModel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'time': time,
      'message': message,
      'n_b_profile_model': n_b_profile_model,
    };
  }

  String toJson() => json.encode(toMap());
}
