import 'package:absent_flutter/api/Api.dart';
import 'package:absent_flutter/entities/Course.dart';

Future<Course> fetchCourse() async {
  // TODO  Not implemented
  final response = await Api.instance.get("NOT implemented");

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Course.fromRawJson(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Course');
  }
}
