import 'dart:convert';
import 'dart:io';

import 'package:absent_flutter/api/fetchs/fetchCourseMock.dart';
import 'package:absent_flutter/api/fetchs/fetchCourses.dart';
import 'package:absent_flutter/entities/Course.dart';
import 'package:flutter/foundation.dart';

Future<List<Course>> fetchCoursesMock() async {
  sleep(Duration(milliseconds: 500));
  final course = await fetchCourseMock();
  var mockData = json.encode(<Course>[
    course,
    course,
  ]);
  return compute(parseCourses, mockData);
}
