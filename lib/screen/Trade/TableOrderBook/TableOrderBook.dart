import 'package:absent_flutter/RekuEntities/OrderBook.dart';
import 'package:flutter/material.dart';

class TableOrderBook extends StatelessWidget {
  final OrderBook orderBook;
  const TableOrderBook({
    Key key,
    this.orderBook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: IntrinsicColumnWidth(flex: 1),
        1: IntrinsicColumnWidth(flex: 1),
        2: IntrinsicColumnWidth(flex: 1),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: buildOrderBookList(),
    );
  }

  List<TableRow> buildOrderBookList() {
    return orderBook.b
        .asMap()
        .map<int, TableRow>((int index, List<double> data) {
          return MapEntry(
            index,
            TableRow(children: <Widget>[
              buildText(orderBook.priceInIDR(OrderBookType.b, index)),
              buildText(orderBook.volumeInCoin(OrderBookType.b, index)),
              buildText(orderBook.volumeInIDR(OrderBookType.b, index)),
            ]),
          );
        })
        .values
        .toList();
  }

  Padding buildText(String text) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12),
        textAlign: TextAlign.end,
      ),
    );
  }
}
