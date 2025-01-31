import 'package:absent_flutter/layout/minimal/minimal.dart';
import 'package:flutter/material.dart';

class TradeArguments {
  final String title;
  final String message;
  final int pathIndex;
  TradeArguments(this.title, this.message, this.pathIndex);
}

class TradeContainer extends StatelessWidget {
  static const routeName = '/trade';

  @override
  Widget build(BuildContext context) {
    final TradeArguments args = ModalRoute.of(context).settings.arguments;
    return LayoutMinimal(
      pathIndex: 1,
    );
  }
}
