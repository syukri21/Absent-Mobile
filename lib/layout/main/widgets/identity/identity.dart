import 'package:flutter/material.dart';

class Identity extends StatelessWidget {
  const Identity({
    Key key,
    @required this.top,
  }) : super(key: key);

  final double top;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 80, left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hello,",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Syukri",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
