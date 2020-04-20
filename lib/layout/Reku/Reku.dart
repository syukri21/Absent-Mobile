import 'package:absent_flutter/layout/main/widgets/actions/actions.dart';
import 'package:absent_flutter/layout/main/widgets/bottomBar/bottomBar.dart';
import 'package:flutter/material.dart';

class LayoutReku extends StatelessWidget {
  final int pathIndex;
  const LayoutReku({Key key, this.pathIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          child: Flex(
            children: <Widget>[
              Icon(Icons.insert_chart),
              Expanded(child: Center(child: Text("Trade"))),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
          ),
        ),
        actions: actions(),
      ),
      bottomNavigationBar: BottomBar(
        pathIndex: this.pathIndex,
      ),
    );
  }
}
