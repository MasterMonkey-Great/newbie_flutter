import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('GridView'),
      centerTitle: false,
    );

    Widget _body = GridView.count(

        crossAxisCount: 2,  //一行的 Widget 数量
        children: <Widget>[
          Container(
            color: Colors.lightGreen,
            child: Text('这是一个文本'),
          ),
          
          Text('这是一个文本'),
          Text('这是一个文本'),
          Container(
            color: Colors.lightGreen,
            child: Text('这是一个文本'),
          ),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Container(
            color: Colors.lightGreen,
            child: Text('这是一个文本'),
          ),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Container(
            color: Colors.lightGreen,
            child: Text('这是一个文本'),
          ),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Container(
            color: Colors.lightGreen,
            child: Text('这是一个文本'),
          ),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Container(
            color: Colors.lightGreen,
            child: Text('这是一个文本'),
          ),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Container(
            color: Colors.lightGreen,
            child: Text('这是一个文本'),
          ),
          Text('这是一个文本')
        ],
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,

    );
  }
}