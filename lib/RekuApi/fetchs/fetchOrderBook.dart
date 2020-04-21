import 'package:absent_flutter/RekuApi/ApiReku.dart';
import 'package:absent_flutter/RekuEntities/OrderBook.dart';

Future<OrderBook> fetchOrderBook() async {
  final response = await ApiReku.instance
      .get("https://api.rekeningku.com/v2/orderbook?id=1");

  if (response.statusCode == 200) {
    return OrderBook.fromRawJson(response.body);
  } else {
    throw Exception('Failed to load Course');
  }
}
//
