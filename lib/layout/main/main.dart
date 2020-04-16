import 'package:absent_flutter/layout/main/widgets/actions/actions.dart';
import 'package:absent_flutter/layout/main/widgets/identity/identity.dart';
import 'package:flutter/material.dart';

class LayoutMain extends StatelessWidget {
  final Widget child;
  final String title;
  const LayoutMain({Key key, @required this.child, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: actions(),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Container(
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
            ),
            Padding(
              child: this.child,
              padding: EdgeInsets.only(top: 160),
            ),
            // this.child
          ],
        ),
      ),
    );
  }
}
