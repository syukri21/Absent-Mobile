import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('Kuliah'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Setting'),
        ),
      ],
      currentIndex: 0,
      elevation: 0,
      selectedItemColor: Theme.of(context).appBarTheme.color,
      onTap: (index) {},
    );
  }
}
