import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final int pathIndex;
  const BottomBar({
    Key key,
    this.pathIndex,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex;

  @override
  void initState() {
    super.initState();
    if (this.widget.pathIndex != null) {
      setState(() {
        selectedIndex = this.widget.pathIndex;
      });
    }
  }

  handleTap(int index) {
    if (index != this.selectedIndex) {
      switch (index) {
        case 0:
          Navigator.popAndPushNamed(context, "/");
          break;
        case 1:
          Navigator.popAndPushNamed(context, "/trade");
          break;
        default:
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.insert_chart),
          title: Text('Trade'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Setting'),
        ),
      ],
      currentIndex: selectedIndex,
      elevation: 0,
      selectedItemColor: Theme.of(context).appBarTheme.color,
      onTap: handleTap,
    );
  }
}
