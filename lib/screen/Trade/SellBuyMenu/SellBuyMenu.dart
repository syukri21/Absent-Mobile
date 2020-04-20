import 'package:flutter/material.dart';

class SellBuyMenu extends StatefulWidget {
  @override
  _SellBuyMenuState createState() => _SellBuyMenuState();
}

class _SellBuyMenuState extends State<SellBuyMenu> {
  String dropdownValue = 'Jual Beli';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isDense: true,
      value: dropdownValue,
      isExpanded: true,
      underline: Container(
        height: 1,
        color: Colors.grey[500],
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        'Jual Beli',
        'Jual Beli Instant',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
