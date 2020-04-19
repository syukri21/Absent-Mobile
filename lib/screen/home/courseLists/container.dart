import 'package:absent_flutter/api/fetchs/fetchCourses.dart';
import 'package:absent_flutter/entities/Course.dart';
import 'package:absent_flutter/screen/Home/courseLists/courseList.dart';
import 'package:flutter/material.dart';

class CourseContainer extends StatefulWidget {
  CourseContainer({Key key}) : super(key: key);
  @override
  _CourseContainerState createState() => _CourseContainerState();
}

class _CourseContainerState extends State<CourseContainer> {
  Future<List<Course>> futureCourses;

  @override
  void initState() {
    futureCourses = fetchCourses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(
        future: futureCourses,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CourseList(courses: snapshot.data);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Padding(
            padding: EdgeInsets.all(20),
            child: CircularProgressIndicator(),
          );
        });
  }
}
