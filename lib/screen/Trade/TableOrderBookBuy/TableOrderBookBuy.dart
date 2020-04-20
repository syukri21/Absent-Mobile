import 'package:absent_flutter/RekuEntities/OrderBook.dart';
import 'package:flutter/material.dart';

class TableOrderBookBuy extends StatelessWidget {
  const TableOrderBookBuy({
    Key key,
    @required this.buy,
  }) : super(key: key);

  final List<B> buy;

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: IntrinsicColumnWidth(flex: 1),
        1: IntrinsicColumnWidth(flex: 1),
        2: IntrinsicColumnWidth(flex: 1),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: buy.map<TableRow>((B data) {
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
