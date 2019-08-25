import 'package:flutter/material.dart';

/// 测试一层一层的传递数据
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
      body: CounterWrapper(this._count, this._increaseCount),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _increaseCount();
          }),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  CounterWrapper(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(count, increaseCount),
    );
  }
}

class Counter extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  Counter(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text('$count'),
      onPressed: increaseCount,
    );
  }
}

// InheritedWidget TODO
class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;



  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
