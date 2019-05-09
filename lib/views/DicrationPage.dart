import 'package:flutter/material.dart';


/**
 * Row控件即水平布局控件，能够将子控件水平排列。

    Row子控件有灵活与不灵活的两种，Row首先列出不灵活的子控件，减去它们的总宽度，计算还有多少可用的空间。然后Row按照Flexible.flex属性确定的比例在可用空间中列出灵活的子控件。要控制灵活子控件,需要使用Flexible控件：
    ---------------------
    作者：何小有
    来源：CSDN
    原文：https://blog.csdn.net/hekaiyou/article/details/53218863
    版权声明：本文为博主原创文章，转载请附上博文链接！


    RaisedButton  Flexible 的理解？？？？
 */
class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('dircoration demo')),
      body: new Column(
        children: <Widget>[

          new RaisedButton(
            onPressed: () {
              print('点击红色按钮事件');
            },
            color: const Color(0xffcc0000),
            child: new Text('红色按钮'),
          ),
          new Flexible(
            flex: 1,
            child: new RaisedButton(
              onPressed: () {
                print('点击黄色按钮事件');
              },
              color: const Color(0xfff1c232),
              child: new Text('黄色按钮'),
            ),
          ),
          new RaisedButton(
            onPressed: () {
              print('点击粉色按钮事件');
            },
            color: const Color(0xffea9999),
            child: new Text('粉色按钮'),
          ),
          new RaisedButton(
            onPressed: () {
              print('click yello');
            },
            color: const Color(0xffea9999),
            child: new Text('粉色按钮'),
          )
          ,
          new RaisedButton(onPressed: () {},
          )


        ],
      ),
    );
  }
}
