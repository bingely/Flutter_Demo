import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 需要在return 前面声明
    final Widget flatButtonDemo = new Row(
      children: <Widget>[
        FlatButton(
          child: Text('flatbutton'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            backgroundColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              shape: StadiumBorder()
            )
          ),
          child: OutlineButton(
            onPressed: (){},
            child: Text('buttom')
          ),
        ),
        RaisedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('rasisedbutton'))
      ],
    );


    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 16,),
        OutlineButton.icon(
            onPressed: (){}, icon: Icon(Icons.add), label: Text("outlineButton"))
      ],
    );


    return Scaffold(
      appBar: AppBar(
        title: Text("buttondemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[flatButtonDemo, raisedButtonDemo, outlineButtonDemo],
        ),
      ),
    );
  }
}
