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
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Text("Saldo", style: TextStyle(fontSize: 12)),
                        Text("0", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Total Beli (IDR)',
                      labelStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      contentPadding: EdgeInsets.all(10),
                      isDense: true,
                    ),
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("25%"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("50%"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("75%"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("100%"),
                      ),
                    ],
                  )
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
