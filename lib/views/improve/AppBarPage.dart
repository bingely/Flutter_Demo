import 'package:flutter/material.dart';

class PopMenuDemo extends StatefulWidget {
  @override
  _PopMenuDemoState createState() => new _PopMenuDemoState();
}

class _PopMenuDemoState extends State<PopMenuDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('popmenu demo'),
        actions: <Widget>[
        //  new PopupMenuButton(itemBuilder: null)
        ],
      ),
      body: new Center(child: new Text('hello menu'),),
    );
  }
}

