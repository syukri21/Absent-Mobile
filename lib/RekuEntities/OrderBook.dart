// To parse this JSON data, do
//
//     final orderBook = orderBookFromJson(jsonString);

import 'dart:convert';

import 'package:absent_flutter/RekuEntities/Currency/Rupiah.dart';

enum OrderBookType { b, s }

class OrderBook {
  List<List<double>> b;
  List<List<double>> s;

  OrderBook({
    this.b,
    this.s,
  });

  OrderBook copyWith({
    List<List<double>> b,
    List<List<double>> s,
  }) =>
      OrderBook(
        b: b ?? this.b,
        s: s ?? this.s,
      );

  factory OrderBook.fromRawJson(String str) =>
      OrderBook.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrderBook.fromJson(Map<String, dynamic> json) => OrderBook(
        b: List<List<double>>.from(json["b"]
            .map((x) => List<double>.from(x.map((x) => x.toDouble())))),
        s: List<List<double>>.from(json["s"]
            .map((x) => List<double>.from(x.map((x) => x.toDouble())))),
      );

  Map<String, dynamic> toJson() => {
        "b": List<dynamic>.from(
            b.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "s": List<dynamic>.from(
            s.map((x) => List<dynamic>.from(x.map((x) => x)))),
      };

  String priceInIDR(OrderBookType type, int index) {
    if (type == OrderBookType.b) {
      return Rupiah(this.b[index][1]).toRupiah();
    } else {
      return Rupiah(this.s[index][1]).toRupiah();
    }
  }

  String volumeInCoin(OrderBookType type, int index) {
    if (type == OrderBookType.b) {
      return Rupiah(this.b[index][2]).toRupiahWithDecimal();
    } else {
      return Rupiah(this.s[index][2]).toRupiahWithDecimal();
    }
  }

  String volumeInIDR(OrderBookType type, int index) {
    if (type == OrderBookType.b) {
      return Rupiah(this.b[index][0]).toRupiah();
    } else {
      return Rupiah(this.s[index][0]).toRupiah();
    }
  }
}
