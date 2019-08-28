import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  BottomNavigationBarDemoState createState() => new BottomNavigationBarDemoState();
}

class BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('消息')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.send),
          title: Text('服务器')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          title: Text('我的')
        ),
      ],
    );
  }


  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
