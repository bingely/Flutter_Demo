import 'package:flutter/material.dart';
class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  StreamDemoHomeState createState() => new StreamDemoHomeState();
}

class StreamDemoHomeState extends State<StreamDemoHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo.listen(onData);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(StreamDemoHome oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  /// 模拟等待3秒，得到数据
  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 3));
    // throw 'Something happened';   /// 模拟错误的回调
    return 'hello~';
  }


  void onData(String event) {
  }
}