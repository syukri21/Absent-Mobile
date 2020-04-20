import 'package:absent_flutter/RekuApi/ApiReku.dart';
import 'package:absent_flutter/entities/Course.dart';

Future<Course> fetchCourse() async {
  final response = await ApiReku.instance
      .get("https://api.rekeningku.com/v2/orderbook?id=1");

  if (response.statusCode == 200) {
    return Course.fromRawJson(response.body);
  } else {
    throw Exception('Failed to load Course');
  }
}
