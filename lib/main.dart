import 'package:absent_flutter/layout/main/main.dart';
import 'package:absent_flutter/screen/home/Home.dart';
import 'package:absent_flutter/screen/home/const.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routes: {
        HOME_SCREEN["path"]: (context) =>
            LayoutMain(child: Home(), title: HOME_SCREEN["title"])
      },
    );
  }
}
