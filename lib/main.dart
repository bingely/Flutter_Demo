import 'package:flutter/material.dart';
import 'package:flutter_demo/views/TextViewPage.dart';

void main() =>
    runApp(

      /* new Center(
          child: new Text("helloworld", textDirection: TextDirection.ltr),
        )*/
        new MaterialApp(
          title: "我的first flutter app",
          home: new TextViewDemo(),

        )
    );







class MyStateLessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 列：由AppBar+Expand组成
    return new Material(

        child: new Column(
          children: <Widget>[
            new MyAppBar(
              title: new Text('实例', style: Theme
                  .of(context)
                  .primaryTextTheme
                  .title),
            )
          ],
        )
    );
  }
}


class Scaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text('instace title', style: Theme
                .of(context)
                .primaryTextTheme
                .title,),
          ),
          new Expanded(child: new Text('hello'))
        ],
      ),
    );
  }
}


class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text('实例标题', style: Theme
                .of(context)
                .primaryTextTheme
                .title),
          ),
          new Expanded(
            child: new Center(
              child: new Text('你好，世界！'),
            ),
          ),
        ],
      ),
    );
  }
}


class NewMyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.menu), onPressed: null),
          new IconButton(icon: new Icon(Icons.menu), onPressed: null)
        ],

      ),
    );
  }
}


class MyBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.menu), onPressed: null),
          new Expanded(child: new Text('hlleo')),
        ],
      ),
    );
  }
}

class MyBarStaless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.menu), onPressed: null),
          new Expanded(child: new Text('hello'))
        ],
      ),
    );
  }
}



class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: '导航菜单',
            onPressed: null,
          ),
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: '搜索',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}


