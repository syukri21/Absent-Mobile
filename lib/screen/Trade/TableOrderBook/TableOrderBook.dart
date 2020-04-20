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
        Table(
          columnWidths: {
            0: FixedColumnWidth(80),
            1: IntrinsicColumnWidth(flex: 1),
            2: IntrinsicColumnWidth(flex: 1),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Harga",
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "BTC",
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "IDR",
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.end,
                ),
              ),
            ]),
          ],
        ),
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
