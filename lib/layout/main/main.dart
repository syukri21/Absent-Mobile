import 'package:absent_flutter/layout/main/widgets/actions/actions.dart';
import 'package:absent_flutter/layout/main/widgets/actions/identity.dart';
import 'package:absent_flutter/layout/main/widgets/bottomBar/bottomBar.dart';
import 'package:flutter/material.dart';

class LayoutMain extends StatelessWidget {
  final Widget child;
  final String title;
  const LayoutMain({Key key, @required this.child, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   actions: actions(),
        //   elevation: 0,
        // ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 250,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      color: Theme.of(context).canvasColor,
                      child: Image(
                        image: AssetImage("assets/images/download.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/images/blob-shape.png"),
                      fit: BoxFit.scaleDown,
                      alignment: Alignment(1, -0.5),
                    ),
                    Image(
                      image: AssetImage("assets/images/profile.png"),
                      fit: BoxFit.scaleDown,
                      alignment: Alignment(0.6, 0),
                    ),
                    Identity()
                  ],
                ),
              ),
              actions: actions(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  this.child,
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomBar());
  }
}
