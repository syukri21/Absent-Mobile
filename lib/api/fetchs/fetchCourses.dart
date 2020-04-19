// A function that converts a response body into a List<Course>.
import 'dart:convert';

import 'package:absent_flutter/api/Api.dart';
import 'package:absent_flutter/entities/Course.dart';
import 'package:flutter/foundation.dart';

List<Course> parseCourses(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Course>((json) => Course.fromJson(json)).toList();
}

Future<List<Course>> fetchCourses() async {
  final response =
      await Api.instance.get('https://jsonplaceholder.typicode.com/Courses');
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return compute(parseCourses, response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Course');
  }
}
