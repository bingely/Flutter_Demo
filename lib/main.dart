import 'package:flutter/material.dart';
import 'package:flutter_demo/views/AlignPage.dart';
import 'package:flutter_demo/views/DicrationPage.dart';
import 'package:flutter_demo/views/ImagePage.dart';
import 'package:flutter_demo/views/StackPage.dart';
import 'package:flutter_demo/views/TextViewPage.dart';
import 'package:flutter_demo/views/containerPage.dart';
import 'package:flutter_demo/views/improve/AppBarPage.dart';

void main() =>
    runApp(

      /* new Center(
          child: new Text("helloworld", textDirection: TextDirection.ltr),
        )*/
        new MaterialApp(
          title: "我的first flutter app",
          home: new PopMenuDemo(),

        )
    );
