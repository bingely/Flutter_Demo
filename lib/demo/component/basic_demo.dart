import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerBoxDecorationDemo();
  }
}

class ContainerBoxDecorationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      /// 盒子样式
      decoration: new BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400].withOpacity(0.5),
              BlendMode.hardLight,
            )),
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      ),
    );
    ;
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'bingley',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
              text: '.net',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey
              )
            )
          ]
      ),
    );
  }
}



class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'helloText',
      textAlign: TextAlign.left,
      style: TextStyle(fontSize: 16),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
