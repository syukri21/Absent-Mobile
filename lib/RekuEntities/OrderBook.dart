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

// NOTE CUSTOM

  List<B> sortedB(int sort) {
    return this
        .b
        .sublist(0, sort != null ? 10 : sort)
        .map<B>((a) => B(
              price: a[1],
              volCoin: a[2],
              volIDR: a[0],
            ))
        .toList();
  }

  List<S> sortedS(int sort) {
    return this
        .s
        .sublist(0, sort != null ? 10 : sort)
        .reversed
        .toList()
        .map<S>((a) => S(
              price: a[1],
              volCoin: a[2],
              volIDR: a[0],
            ))
        .toList();
  }
}

class B {
  double volIDR;
  double price;
  double volCoin;

  B({
    this.volIDR,
    this.price,
    this.volCoin,
  });

  String get priceInIDR {
    return Rupiah(this.price).toRupiah();
  }

  String get volumeInCoin {
    return Rupiah(this.volCoin).toRupiahWithDecimal();
  }

  String get volumeInIDR {
    return Rupiah(this.volIDR).toRupiah();
  }
}

class S {
  double volIDR;
  double price;
  double volCoin;

  S({
    this.volIDR,
    this.price,
    this.volCoin,
  });

  String get priceInIDR {
    return Rupiah(this.price).toRupiah();
  }

  String get volumeInCoin {
    return Rupiah(this.volCoin).toRupiahWithDecimal();
  }

  String get volumeInIDR {
    return Rupiah(this.volIDR).toRupiah();
  }
}
