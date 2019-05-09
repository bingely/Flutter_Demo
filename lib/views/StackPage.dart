import 'package:flutter/material.dart';

/**
 *  Stack即层叠布局控件，能够将子控件层叠排列。

    Stack控件的每一个子控件都是定位或不定位，定位的子控件是被Positioned控件包裹的。
    Stack控件本身包含所有不定位的子控件，其根据alignment定位（默认为左上角）。
    然后根据定位的子控件的top、right、bottom和left属性将它们放置在Stack控件上。
    ---------------------
    作者：何小有
    来源：CSDN
    原文：https://blog.csdn.net/hekaiyou/article/details/53257784
    版权声明：本文为博主原创文章，转载请附上博文链接！
 */
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('stackdemo'),),
      body: new Center(
        child: new Stack(
          children: <Widget>[
            new Image.network(
                'http://img2.cxtuku.com/00/13/12/s97783873391.jpg'),
            new Positioned(
                left: 35,
                right: 35,
                top: 15,
                child: new Text('hellostack')),

          ],
        ),
      ),
    );
  }
}
