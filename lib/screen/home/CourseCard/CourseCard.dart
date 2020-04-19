import 'package:absent_flutter/entities/Course.dart';
import 'package:absent_flutter/utils/intoRGB.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key key, this.image, this.data}) : super(key: key);

  final Course data;
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
