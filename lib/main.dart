import 'package:flutter/material.dart';
import 'package:flutter_demo/demo/animation/animation_demo.dart';
import 'package:flutter_demo/demo/component/alert_dialog_demo.dart';
import 'package:flutter_demo/demo/component/button_demo.dart';
import 'package:flutter_demo/demo/http/http_demo.dart';
import 'package:flutter_demo/demo/component/checkbox_demo.dart';
import 'package:flutter_demo/demo/component/bottom_navigation_bar_demo.dart';
import 'package:flutter_demo/demo/component/scafold_demo.dart';

import 'demo/component/card_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: Locale('en', 'US'),
        // locale: Locale('zh', 'CN'),
        // localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        //   return Locale('en', 'US');
        // },

        supportedLocales: [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
        ],
        debugShowCheckedModeBanner: false,
        // home: NavigatorDemo(),
        // 决定了初始页面路径
        initialRoute: '/card_demo',
        // 配置页面路径
        routes: {
          '/': (context) => AnimationDemo(),
          "/animation": (context) => AnimationDemo(),
          "/alertdemo": (context) => AlertDialogDemo(),
          "/buttondemo": (context) => ButtonDemo(),
          "/httpdemo": (context) => HttpDemo(),
          "/checkboxdemo": (context) => CheckboxDemo(),
          '/bottomnavigationdemo':(context) => BottomNavigationBarDemo(),
          '/scafolddemo': (context) => ScaffoldDemo(),
          '/card_demo': (context) => CardDemo(),
        },

        theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
          accentColor: Color.fromRGBO(3, 54, 255, 1.0),
        ));
  }
}

