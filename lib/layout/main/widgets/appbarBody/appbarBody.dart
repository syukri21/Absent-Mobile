import 'package:absent_flutter/layout/main/widgets/identity/identity.dart';
import 'package:flutter/material.dart';

class AppbarBody extends StatelessWidget {
  const AppbarBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: BoxConstraints(maxWidth: double.infinity).biggest.width,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          alignment: const Alignment(-0.2, 0.1),
          image: const AssetImage('assets/images/download.png'),
          fit: BoxFit.cover,
        ),
      ),
      foregroundDecoration: BoxDecoration(
        image: DecorationImage(
          alignment: const Alignment(1.2, 0.1),
          image: const AssetImage('assets/images/blob-shape.png'),
          fit: BoxFit.scaleDown,
        ),
      ),
      child: Identity(),
    );
  }
}
