import 'package:flutter/material.dart';

/**
 * Image控件即图片控件，是显示图像的控件，Image控件有多种构造函数：

    new Image，用于从ImageProvider获取图像。
    new Image.asset，用于使用key从AssetBundle获取图像。
    new Image.network，用于从URL地址获取图像。
    new Image.file，用于从File获取图像。
    为了自动执行像素密度感知资源分辨率，使用AssetImage指定图像，需要确保在控件树中的图片控件上方存在MaterialApp、WidgetsApp和MediaQuery控件。
    ---------------------
    作者：何小有
    来源：CSDN
    原文：https://blog.csdn.net/hekaiyou/article/details/53204466
    版权声明：本文为博主原创文章，转载请附上博文链接！
 */

class ImageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("imageview"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            // 下面是一个从URL地址获取图像的实例，并通过scale属性设置缩放比例：
            new Image.network(
              'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
              scale: 2,),
            new Container(
              decoration: new BoxDecoration(
                /* 为啥没有这个属性
                backgroundImage: new BackgroundImage(
                  image: new AssetImage('images/flutter.jpeg'),
                ),*/
              ),
            )
          ],


        ),
      ),
    );
  }
}
