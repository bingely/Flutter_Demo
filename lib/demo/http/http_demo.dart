import 'package:flutter/material.dart';
import 'package:flutter_demo/demo/mode/post.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' show json;

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('httpdemo'),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: () {
              fetchPosts();
            }
            ),
      ),
    );
  }
}



/*class HttpDemoBody extends StatefulWidget {
  @override
  HttpDemoBodyState createState() => new HttpDemoBodyState();
}

class HttpDemoBodyState extends State<HttpDemoBody> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPosts(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        print('data: ${snapshot.data}');

        return ListView(
          children: snapshot.data.map<Widget>((item) {
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.author),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.imageUrl),
              ),
            );
          }).toList(),
        );
      }
    );
  }

}*/

Future<List<Post>> fetchPosts() async {
  final response =
      await http.get('https://resources.ninghao.net/demo/posts.json');

  if (response.statusCode == 200) {
    final responseBody = json.decode(response.body);
    print(responseBody);
  }
  return null;
}

