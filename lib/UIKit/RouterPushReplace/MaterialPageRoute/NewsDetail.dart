import 'package:flutter/material.dart';
import 'News.dart';

class NewsDetail extends StatelessWidget {
  final News s_new;

  NewsDetail({Key key, @required this.s_new}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.s_new.title),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(this.s_new.description),
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text("动态路由反向传值"),
            onPressed: () {
              Navigator.of(context).pop('动态路由反向传值');
            },
          ),
        ],
      ),
    );
  }
}
