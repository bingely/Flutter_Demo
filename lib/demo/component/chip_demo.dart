import 'package:flutter/material.dart';

//// Chip 碎片，一般是用作标签
class ChipDemo extends StatefulWidget {
  @override
  ChipDemoState createState() => new ChipDemoState();
}

class ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('chipdemo'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Chip(label: Text('life')),
          Chip(
            label: Text('sun'),
            backgroundColor: Colors.orange,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              label: Text('hao'),
              avatar: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text('haohhh'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
