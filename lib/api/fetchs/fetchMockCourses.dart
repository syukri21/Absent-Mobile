import 'dart:convert';
import 'dart:io';

import 'package:absent_flutter/api/fetchs/fetchCourses.dart';
import 'package:absent_flutter/api/fetchs/fetchMockCourse.dart';
import 'package:absent_flutter/entities/Course.dart';
import 'package:flutter/foundation.dart';

Future<List<Course>> fetchMockCourses() async {
  sleep(Duration(milliseconds: 500));
  final course = await fetchMockCourse();
  var mockData = json.encode(<Course>[
    course,
    course,
  ]);
  return compute(parseCourses, mockData);
}
