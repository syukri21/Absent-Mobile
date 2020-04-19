import 'package:absent_flutter/layout/main/service.dart';
import 'package:absent_flutter/layout/main/widgets/actions/actions.dart';
import 'package:absent_flutter/layout/main/widgets/actions/identity.dart';
import 'package:absent_flutter/layout/main/widgets/bottomBar/bottomBar.dart';
import 'package:flutter/material.dart';

class LayoutMain extends StatelessWidget {
  const LayoutMain({
    Key key,
    @required ScrollController scrollController,
    @required this.shouldChangeBackgroundColor,
    @required this.widget,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final bool shouldChangeBackgroundColor;
  final LayoutMainService widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 250,
              elevation: 0,
              backgroundColor: shouldChangeBackgroundColor
                  ? Theme.of(context).appBarTheme.color
                  : Theme.of(context).canvasColor,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraint) {
                  return FlexibleSpaceBar(
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image(
                          image: AssetImage("assets/images/download.png"),
                          fit: BoxFit.cover,
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
                  );
                },
              ),
              actions: actions(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  this.widget.child,
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomBar());
  }
}
