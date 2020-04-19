import 'package:absent_flutter/entities/Course.dart' as CourseFactory;
import 'package:absent_flutter/utils/intoRGB.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  Courses({Key key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
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
                  Course(
                    image: AssetImage("assets/images/download.jpg"),
                    data: CourseFactory.Course.mock(),
                  ),
                  Course(
                    image: AssetImage("assets/images/download1.jpg"),
                    data: CourseFactory.Course.mock(),
                  ),
                  Course(
                    image: AssetImage("assets/images/download2.jpg"),
                    data: CourseFactory.Course.mock(),
                  ),
                  Course(
                    image: AssetImage("assets/images/download3.jpg"),
                    data: CourseFactory.Course.mock(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Course extends StatelessWidget {
  const Course({Key key, this.image, this.data}) : super(key: key);

  final CourseFactory.Course data;
  final ImageProvider image;

  final _borderRadius = const BorderRadius.all(Radius.circular(15));

  @override
  Widget build(BuildContext context) {
    return Card(
      color: stringToHexColor(this.data.name),
      borderOnForeground: true,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: _borderRadius,
      ),
      child: Container(
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            image: DecorationImage(
              image: this.image,
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: InkWell(
            borderRadius: _borderRadius,
            splashColor: Theme.of(context).appBarTheme.color,
            onTap: () => print('Card tapped.'),
            child: Padding(
              child: Text(
                this.data.name,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.only(left: 20, top: 30),
            ),
          ),
        ),
      ),
    );
  }
}
