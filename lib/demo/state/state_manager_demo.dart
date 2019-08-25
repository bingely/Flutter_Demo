import 'package:flutter/material.dart';

/// 界面会发生变化， setState((){})
class StateManagementDemo extends StatefulWidget {

  @override
  StateManagementDemoState createState() => new StateManagementDemoState();
}

class StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;

  void _increaseCount() {
    setState(() {
      _count += 1;
    });
    print(_count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateManagedemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Chip(
          label: Text('$_count'),
        ),
      ),
      floatingActionButton:
      FloatingActionButton(child: Icon(Icons.add), onPressed: () {
        _increaseCount();
      }),
    );
  }
}


/// 此处运行出来的chip的UI值没有变化，因为StatelessWidget
class TestStateManagementDemo extends StatelessWidget {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateManagedemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Chip(
          label: Text('$count'),
        ),
      ),
      floatingActionButton:
      FloatingActionButton(child: Icon(Icons.add), onPressed: () {
        count += 1;
        print(count);
      }),
    );
  }
}
