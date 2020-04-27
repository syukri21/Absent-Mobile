import 'package:absent_flutter/layout/Reku/AppBarBottom/AppBarBottom.dart';
import 'package:absent_flutter/layout/main/widgets/actions/actions.dart';
import 'package:absent_flutter/layout/main/widgets/bottomBar/bottomBar.dart';
import 'package:flutter/material.dart';

class LayoutReku extends StatelessWidget {
  final int pathIndex;
  final Widget child;
  const LayoutReku({Key key, this.pathIndex, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          child: Flex(
            children: <Widget>[
              Icon(Icons.insert_chart),
              Expanded(
                // dssd
                child: Center(
                  child: Wrap(
                    children: <Widget>[
                      Text("BTC / IDR"),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBarBottom(),
        ),
        actions: actions(),
      ),
      body: SingleChildScrollView(
        child: this.child,
      ),
      bottomNavigationBar: BottomBar(
        pathIndex: this.pathIndex,
      ),
      //
    );
  }
}
