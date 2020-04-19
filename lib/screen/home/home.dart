import 'package:absent_flutter/screen/home/CourseLists/CourseLists.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CourseLists(),
        ],
      ),
    );
  }
}
