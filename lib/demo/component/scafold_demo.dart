import 'package:flutter/material.dart';
import 'package:flutter_demo/demo/component/bottom_navigation_bar_demo.dart';


class ScaffoldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('云帮手'),
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBarDemo(),
    );
  }
}