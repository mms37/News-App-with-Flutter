import 'dart:convert';
// import 'dart:ffi';

class Profilemodel {
  int id;
  String title;
  int nblanguageitemmodel;
  int nbnotificationitemmodel;
  int nb;

  Profilemodel({
    required this.id,
    required this.title,
    required this.nblanguageitemmodel,
    required this.nbnotificationitemmodel,
    required this.nb,
  });

  factory Profilemodel.fromSql(List<dynamic> row) {
    return Profilemodel(
      id: row[0],
      title: row[1],
      nblanguageitemmodel: row[2],
      nbnotificationitemmodel: row[3],
      nb: row[4],
    );
  }

  factory Profilemodel.fromMap(Map<String, dynamic> map) {
    return Profilemodel(
      id: map['id'],
      title: map['title'],
      nblanguageitemmodel: map['nblanguageitemmodel'],
      nbnotificationitemmodel: map['nbnotificationitemmodel'],
      nb: map['nb'],
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
      'nb': nb,
    };
  }

  String toJson() => json.encode(toMap());
}
