import 'package:absent_flutter/layout/main/widgets/actions/actions.dart';
import 'package:absent_flutter/layout/main/widgets/appbarBody/appbarBody.dart';
import 'package:flutter/material.dart';

class LayoutMain extends StatelessWidget {
  final Widget child;
  final String title;
  const LayoutMain({Key key, @required this.child, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: actions(),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            AppbarBody(),
            Padding(
              child: this.child,
              padding: EdgeInsets.only(top: 160),
            ),
            // this.child
          ],
        ),
      ),
    );
  }
}
