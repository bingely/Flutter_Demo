import 'package:flutter/material.dart';

enum Action { Ok, Cancel }

class AlertDialogDemo extends StatefulWidget {
  @override
  AlertDialogDemoState createState() => new AlertDialogDemoState();
}

class AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = "Nothing";

  Future _openDialog() async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Are you sure about this?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, Action.Cancel);
              },
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context, Action.Ok);
              },
            ),
          ],
        );
      },
    );


    switch (action) {
      case Action.Ok:
        setState(() {
          _choice = 'Ok';
        });
        break;
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('AlertDialogDemo'),
      ),
      body: new Container(
        //宽度
        width: 100,
        //高度
        height: 100,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("your"),
            SizedBox(height: 16),
            new Row(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("hello"),
                      onPressed: _openDialog,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
