import 'package:flutter/material.dart';

class CartControlPage extends StatelessWidget {
  const CartControlPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('Card'),
      centerTitle: false,
    );

    Widget _body = ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28)),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxxxx"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("李四", style: TextStyle(fontSize: 28)),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxxxx"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("王武", style: TextStyle(fontSize: 28)),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxxxx"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("三麻子", style: TextStyle(fontSize: 28)),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxxxx"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("赵二狗", style: TextStyle(fontSize: 28)),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxxxx"),
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
