import 'package:flutter/material.dart';

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
        initialRoute: '/newhome',
        // 配置页面路径
        routes: {
          '/': (context) => Home(),
          "/newhome": (context) => NewHome()
        },
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
          accentColor: Color.fromRGBO(3, 54, 255, 1.0),
        ));
  }
}

class NewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 6,
        child: Scaffold());
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Bingley'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
      ),
    );
  }
}
