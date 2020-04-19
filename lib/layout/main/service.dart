import 'package:absent_flutter/layout/main/main.dart';
import 'package:flutter/material.dart';

class LayoutMainService extends StatefulWidget {
  final Widget child;
  final String title;
  const LayoutMainService({Key key, @required this.child, @required this.title})
      : super(key: key);

  @override
  _LayoutMainServiceState createState() => _LayoutMainServiceState();
}

class _LayoutMainServiceState extends State<LayoutMainService> {
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
    return LayoutMain(
      scrollController: _scrollController,
      shouldChangeBackgroundColor: shouldChangeBackgroundColor,
      widget: widget,
    );
  }
}
