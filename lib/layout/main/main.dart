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
      body: DefaultTabController(
        child: NestedScrollView(
          body: SingleChildScrollView(child: this.child),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: actions(),
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                elevation: null,
                flexibleSpace: LayoutBuilder(builder: (context, constraint) {
                  var top = constraint.biggest.height;
                  return FlexibleSpaceBar(
                      centerTitle: false,
                      titlePadding: const EdgeInsets.all(16),
                      background: Container(
                        decoration: decoration(),
                        child: Identity(top: top),
                      ),
                      collapseMode: CollapseMode.parallax,
                      title: Text(top == 80 ? this.title : ""));
                }),
              ),
            ];
          },
        ),
        length: 2,
      ),
    );
  }

  BoxDecoration decoration() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/homebackground1.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  List<Widget> actions() {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    ];
  }
}
