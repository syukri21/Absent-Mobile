import 'package:absent_flutter/layout/main/service.dart';
import 'package:flutter/material.dart';

class LayoutMainContainer extends StatelessWidget {
  final Widget child;
  final String title;
  const LayoutMainContainer({Key key, this.child, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutMainService(
      child: this.child,
      title: this.title,
    );
  }
}
