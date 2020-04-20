import 'package:absent_flutter/screen/Trade/TableOrderBook/container.dart';
import 'package:flutter/material.dart';

class Trade extends StatelessWidget {
  const Trade({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
            height: 200,
          ),
        ),
        Expanded(
          flex: 1,
          child: TableOrderBookContainer(),
        ),
      ],
    );
  }
}
