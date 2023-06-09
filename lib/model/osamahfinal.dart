import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  String name;
  String school;
  String ogrNo;
  List<String> rights;

  Welcome({
    required this.name,
    required this.school,
    required this.ogrNo,
    required this.rights,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        name: json["name"],
        school: json["school"],
        ogrNo: json["OgrNo"],
        rights: List<String>.from(json["rights"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "school": school,
        "OgrNo": ogrNo,
        "rights": List<dynamic>.from(rights.map((x) => x)),
      };
}
