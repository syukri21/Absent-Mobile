import 'package:absent_flutter/entities/Course.dart';
import 'package:absent_flutter/screen/home/CourseCard/CourseCard.dart';
import 'package:flutter/material.dart';

class CourseList extends StatelessWidget {
  final List<Course> courses;

  const CourseList({
    Key key,
    @required this.courses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        CustomScrollView(
          primary: true,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              sliver: SliverGrid.count(
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 3.0,
                crossAxisCount: 1,
                children: courses.map<Widget>((Course course) {
                  return CourseCard(
                    data: course,
                    image: AssetImage("assets/images/download1.jpg"),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
