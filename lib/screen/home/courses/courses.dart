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
                crossAxisSpacing: 10.0,
                crossAxisCount: 2,
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

  @override
  Widget build(BuildContext context) {
    return Card(
      color: stringToHexColor(this.title),
      borderOnForeground: true,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Container(
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            image: DecorationImage(
              image: this.image,
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            splashColor: Colors.teal.withAlpha(100),
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
