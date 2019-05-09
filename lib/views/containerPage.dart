/*
* 容器
* */
import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Container(
        width: 328.0,
        height: 328.0,
        // BoxDecoration对象描述如何绘制容器,通过backgroundColor
          // 属性为容器设置背景颜色。
        decoration: new BoxDecoration(
            color: Colors.lightBlueAccent[100],
            border: new Border.all(
                color: const Color(0xff6d93dbb),
                width: 8.0
            )
        ),
        child: new Text('Container Text'),
      ),
    );
  }
}