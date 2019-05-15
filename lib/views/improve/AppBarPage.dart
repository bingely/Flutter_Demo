import 'package:flutter/material.dart';

class PopMenuDemo extends StatefulWidget {
  @override
  _PopMenuDemoState createState() => new _PopMenuDemoState();
}

// 5/15 17:02
class PopMenuWidget extends StatefulWidget {
  @override
  _PopMenuWidgetState createState() => new _PopMenuWidgetState();
}


class CC extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //TODO
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class _PopMenuDemoState extends State<PopMenuDemo> {

  String _bodyStr = '显示菜单的点击';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('popmenu demo'),
        actions: <Widget>[
          new PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                // 现在应该
                <PopupMenuItem<String>>[
                  new PopupMenuItem(child: new Text())
                  
                ]
              },
            /*onSelected: (String value) {
              setState(() {
                _bodyStr = value;
              });
            },*/
//              itemBuilder: Bu,

            /* itemBuilder: (BuildContext context) =>
              <PopupMenuItem<String>>[
                new PopupMenuItem<String>(
                    value: '选项一的值',
                    child: new Text('选项一')
                ),
                new PopupMenuItem<String>(
                    value: '选项二的值',
                    child: new Text('选项二')
                )
              ]*/


          )
        ],
      ),
      body: new Center(child: new Text(_bodyStr),),
    );
  }
}

