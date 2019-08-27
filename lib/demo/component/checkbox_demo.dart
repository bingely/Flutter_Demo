import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  CheckboxDemoState createState() => new CheckboxDemoState();
}

class CheckboxDemoState extends State<CheckboxDemo> {
  var _checkboxItemA = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('checkboxdemo'),
        elevation: 0.0,
      ),
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkboxItemA,
              title: Text('checkbox item A'),
              subtitle: Text('descrition'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,
              onChanged: (valuse){
                setState(() {
                  _checkboxItemA = valuse;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            )
          ],
        ),
      )
    );
  }
}
