import 'package:absent_flutter/entities/Course.dart';
import 'package:absent_flutter/screen/home/CourseCard/CourseCard.dart';
import 'package:flutter/material.dart';

class CourseLists extends StatefulWidget {
  CourseLists({Key key}) : super(key: key);

  @override
  _CourseListsState createState() => _CourseListsState();
}

class _CourseListsState extends State<CourseLists> {
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
                children: <Widget>[
                  CourseCard(
                    image: AssetImage("assets/images/download.jpg"),
                    data: Course.mock(),
                  ),
                  // Course(
                  //   image: AssetImage("assets/images/download1.jpg"),
                  //   data: CourseFactory.Course.mock(),
                  // ),
                  // Course(
                  //   image: AssetImage("assets/images/download2.jpg"),
                  //   data: CourseFactory.Course.mock(),
                  // ),
                  // Course(
                  //   image: AssetImage("assets/images/download3.jpg"),
                  //   data: CourseFactory.Course.mock(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
