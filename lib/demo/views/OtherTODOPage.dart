import 'package:flutter/material.dart';

/**
    ListView即滚动列表控件，能将子控件组成可滚动的列表。当你需要排列的子控件超出容器大小，就需要用到滚动块。

    Center既中心定位控件，能够将子控件放在其内部中心。

    Opacity控件能调整子控件的不透明度，使子控件部分透明，不透明度的量从0.0到1.1之间，0.0表示完全透明，1.1表示完全不透明。


    class LayoutDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return new Scaffold(
    appBar: new AppBar(
    title: new Text('中心定位'),
    ),
    body: new Center(
    child: new Text('我在屏幕的中心！'),
    ),
    );
    }

 **/

