import 'package:absent_flutter/RekuEntities/OrderBook.dart';
import 'package:flutter/material.dart';

class TableOrderBookSell extends StatelessWidget {
  const TableOrderBookSell({
    Key key,
    @required this.sell,
  }) : super(key: key);

  final List<S> sell;

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FixedColumnWidth(80),
        1: IntrinsicColumnWidth(flex: 1),
        2: IntrinsicColumnWidth(flex: 1),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: sell.map<TableRow>((S data) {
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
