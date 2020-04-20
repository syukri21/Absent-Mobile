import 'package:absent_flutter/screen/Trade/SellBuyMenu/SellBuyMenu.dart';
import 'package:absent_flutter/screen/Trade/TableOrderBook/container.dart';
import 'package:flutter/material.dart';

class Trade extends StatelessWidget {
  const Trade({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SellBuyMenu(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TableOrderBookContainer(),
          ),
        ],
      ),
    );
  }
}
