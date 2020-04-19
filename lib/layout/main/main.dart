import 'package:absent_flutter/layout/main/widgets/actions/actions.dart';
import 'package:absent_flutter/layout/main/widgets/actions/identity.dart';
import 'package:absent_flutter/layout/main/widgets/bottomBar/bottomBar.dart';
import 'package:flutter/material.dart';

class LayoutMain extends StatefulWidget {
  final Widget child;
  final String title;
  const LayoutMain({Key key, @required this.child, @required this.title})
      : super(key: key);

  @override
  _LayoutMainState createState() => _LayoutMainState();
}

class _LayoutMainState extends State<LayoutMain> {
  ScrollController _scrollController;
  bool shouldChangeBackgroundColor = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset >= 50) {
        setState(() => shouldChangeBackgroundColor = true);
      } else {
        setState(() => shouldChangeBackgroundColor = false);
      }
    });
    super.initState();
  }

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
