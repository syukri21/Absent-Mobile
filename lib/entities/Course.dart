import 'dart:convert';

class Course {
  int id;
  String name;
  int totalSks;
  int semester;

  Course({
    this.id,
    this.name,
    this.totalSks,
    this.semester,
  });

  Course copyWith({
    int id,
    String name,
    int totalSks,
    int semester,
  }) =>
      Course(
        id: id ?? this.id,
        name: name ?? this.name,
        totalSks: totalSks ?? this.totalSks,
        semester: semester ?? this.semester,
      );

  factory Course.fromRawJson(String str) => Course.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["ID"],
        name: json["name"],
        totalSks: json["totalSks"],
        semester: json["semester"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "name": name,
        "totalSks": totalSks,
        "semester": semester,
      };
}
