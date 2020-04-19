class CourseEntity {
  int iD;
  String name;
  int totalSks;
  int semester;

  CourseEntity({this.iD, this.name, this.totalSks, this.semester});

  CourseEntity.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['name'];
    totalSks = json['totalSks'];
    semester = json['semester'];
  }

  static CourseEntity mock() {
    return CourseEntity.fromJson(
      {"ID": 1, "name": "Kalkulus 1", "totalSks": 3, "semester": 1},
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['name'] = this.name;
    data['totalSks'] = this.totalSks;
    data['semester'] = this.semester;
    return data;
  }
}
