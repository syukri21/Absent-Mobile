import 'package:absent_flutter/layout/main/container.dart';
import 'package:absent_flutter/layout/main/main.dart';
import 'package:absent_flutter/screen/Home/Home.dart';
import 'package:flutter/material.dart';

class HomeArguments {
  final String title;
  final String message;
  final int pathIndex;
  HomeArguments(this.title, this.message, this.pathIndex);
}

class HomeContainer extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final HomeArguments args = ModalRoute.of(context).settings.arguments;

    return LayoutMain(
      title: "this.title",
      child: Home(),
      pathIndex: 0,
    );
  }
}
