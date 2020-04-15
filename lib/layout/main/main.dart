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
          body: this.child,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                centerTitle: false,
                flexibleSpace: LayoutBuilder(builder: (context, constraint) {
                  var top = constraint.biggest.height;
                  return FlexibleSpaceBar(
                    centerTitle: false,
                    titlePadding: EdgeInsets.all(16),
                    background: Image(
                      image: AssetImage('assets/images/homebackground1.jpg'),
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      top == 80.0 ? this.title : '',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  );
                }),
              ),
            ];
          },
        ),
        length: 2,
      ),
    );
  }
}
