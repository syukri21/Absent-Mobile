import 'package:absent_flutter/layout/main/widgets/bottomBar/bottomBar.dart';
import 'package:flutter/material.dart';

class LayoutMinimal extends StatelessWidget {
  final int pathIndex;
  const LayoutMinimal({Key key, this.pathIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.multiline_chart),
      ),
      bottomNavigationBar: BottomBar(
        pathIndex: this.pathIndex,
      ),
    );
  }
}
