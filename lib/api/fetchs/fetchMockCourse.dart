import 'dart:io';

import 'package:absent_flutter/entities/Course.dart';

Future<Course> fetchMockCourse() async {
  sleep(Duration(milliseconds: 500));
  return Course.fromJson(
    {"ID": 1, "name": "Mock Kalkulus 1", "totalSks": 3, "semester": 1},
  );
}
