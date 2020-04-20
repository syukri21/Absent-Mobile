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
    return Wrap(
      children: <Widget>[
        buildTableOrderBookSell(),
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
        buildTableOrderBookBuy()
      ],
    );
  }

  Table buildTableOrderBookSell() {
    return Table(
      columnWidths: {
        0: IntrinsicColumnWidth(flex: 1),
        1: IntrinsicColumnWidth(flex: 1),
        2: IntrinsicColumnWidth(flex: 1),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: orderBook.sortedS(10).map<TableRow>((S data) {
        return TableRow(children: <Widget>[
          buildText(data.priceInIDR),
          buildText(data.volumeInCoin),
          buildText(data.volumeInIDR),
        ]);
      }).toList(),
    );
  }

  Table buildTableOrderBookBuy() {
    return Table(
      columnWidths: {
        0: IntrinsicColumnWidth(flex: 1),
        1: IntrinsicColumnWidth(flex: 1),
        2: IntrinsicColumnWidth(flex: 1),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: orderBook.sortedB(10).map<TableRow>((B data) {
        return TableRow(children: <Widget>[
          buildText(data.priceInIDR),
          buildText(data.volumeInCoin),
          buildText(data.volumeInIDR),
        ]);
      }).toList(),
    );
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
