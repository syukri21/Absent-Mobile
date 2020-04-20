import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class Rupiah {
  final double amount;

  Rupiah(this.amount);

  String toRupiah() {
    final fmf = FlutterMoneyFormatter(
      amount: this.amount,
      settings: MoneyFormatterSettings(
        decimalSeparator: ",",
        fractionDigits: 0,
        thousandSeparator: ".",
        symbol: "Rp .",
      ),
    );
    return fmf.output.nonSymbol;
  }

  String toRupiahWithDecimal() {
    final fmf = FlutterMoneyFormatter(
      amount: this.amount,
      settings: MoneyFormatterSettings(
        decimalSeparator: ",",
        fractionDigits: 4,
        thousandSeparator: ".",
      ),
    );
    return fmf.output.nonSymbol;
  }
}
