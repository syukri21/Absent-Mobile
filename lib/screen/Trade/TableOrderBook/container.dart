import 'package:absent_flutter/RekuApi/fetchs/fetchOrderBookMock.dart';
import 'package:absent_flutter/RekuEntities/OrderBook.dart';
import 'package:absent_flutter/screen/Trade/TableOrderBook/TableOrderBook.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableOrderBookContainer extends StatefulWidget {
  const TableOrderBookContainer({
    Key key,
  }) : super(key: key);

  @override
  _TableOrderBookContainerState createState() =>
      _TableOrderBookContainerState();
}

class _TableOrderBookContainerState extends State<TableOrderBookContainer> {
  Future<OrderBook> futureOrderBook;
  @override
  void initState() {
    super.initState();
    this.futureOrderBook = fetchOrderBookMock();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureOrderBook,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return TableOrderBook(
            orderBook: snapshot.data,
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error.toString()}');
        }
        return CircularProgressIndicator();
      },
    );
  }
}
