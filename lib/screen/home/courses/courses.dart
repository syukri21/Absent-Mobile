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
              padding: const EdgeInsets.all(20.0),
              sliver: SliverGrid.count(
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 3.0,
                crossAxisCount: 1,
                children: <Widget>[
                  Course(
                    title: "Kalkulus 1",
                    image: AssetImage("assets/images/download.jpg"),
                  ),
                  Course(
                    title: "Etika Profesi",
                    image: AssetImage("assets/images/download1.jpg"),
                  ),
                  Course(
                    title: "Bahasa Indonesia",
                    image: AssetImage("assets/images/download2.jpg"),
                  ),
                  Course(
                    title: "Bahasa Inggris",
                    image: AssetImage("assets/images/download3.jpg"),
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
  const Course({Key key, this.title, this.image}) : super(key: key);

  final String title;
  final ImageProvider image;

  final _borderRadius = const BorderRadius.all(Radius.circular(15));

  @override
  Widget build(BuildContext context) {
    return Card(
      color: stringToHexColor(this.title),
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
                this.title,
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
