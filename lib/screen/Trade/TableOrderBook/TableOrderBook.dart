import 'package:absent_flutter/RekuEntities/OrderBook.dart';
import 'package:absent_flutter/screen/Trade/TableOrderBookBuy/TableOrderBookBuy.dart';
import 'package:absent_flutter/screen/Trade/TableOrderBookSell/TableOrderBookSell.dart';
import 'package:flutter/material.dart';

class TableOrderBook extends StatelessWidget {
  final OrderBook orderBook;
  const TableOrderBook({
    Key key,
    this.orderBook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        TableOrderBookSell(sell: orderBook.sortedS(10)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[200],
              ),
            ),
          ),
        ),
        TableOrderBookBuy(buy: orderBook.sortedB(10)),
      ],
    );
  }
}
