import 'package:absent_flutter/layout/minimal/minimal.dart';
import 'package:absent_flutter/screen/Home/container.dart';
import 'package:absent_flutter/screen/Trade/container.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(63, 80, 152, 1),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        selectedRowColor: Color.fromRGBO(103, 151, 209, 1),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
      ),
      routes: {
        HomeContainer.routeName: (context) => HomeContainer(),
        TradeContainer.routeName: (context) => TradeContainer(),
      },
    );
  }
}
