import 'package:absent_flutter/api/Api.dart';
import 'package:absent_flutter/entities/Course.dart';

Future<Course> fetchCourse() async {
  final response =
      await Api.instance.get('https://jsonplaceholder.typicode.com/Courses/1');

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
