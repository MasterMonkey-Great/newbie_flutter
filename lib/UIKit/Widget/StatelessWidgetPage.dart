import 'package:flutter/material.dart';

class StatelssWidgetPage extends StatelessWidget {
  int countNum = 1;
  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('StatelessWidget'),
      centerTitle: false,
    );

    Widget _body = Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 200),
          Text("${this.countNum}"),
          SizedBox(height: 20),
          RaisedButton(
            child: Text("按钮"),
            onPressed: () {
              // setState()   //错误写法       没法改变页面里面的数据
              this.countNum++;
              print(this.countNum);
            },
          )
        ],
      ),
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
