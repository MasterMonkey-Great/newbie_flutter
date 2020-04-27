import 'dart:ui';

import 'package:flutter/material.dart';

class SimpleDialogPage extends StatelessWidget {
  const SimpleDialogPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('SimpleDialog'),
    );

    Widget _body = Container(
      width: 100,
      child:  RaisedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context){
                return SimpleDialog(
                  title: Text("这是标题"),
                  titlePadding: EdgeInsets.only(bottom: 30.0, left: 10.0),
                  children: <Widget>[
                    SimpleDialogOption(
                      child: Text("这是第一行"),
                      onPressed: () {
                        print("点击了第一行");
                      },
                    ),
                    SimpleDialogOption(
                      child: Text("这是第二行"),
                      onPressed: () {
                        print("点击了第二行");
                      },
                    ),
                    Text("这是第三行文本")
                  ],
                  contentPadding: EdgeInsets.only(left: 40.0),

                );
              }
            );
          },
          child: Text("点击显示SimpleDialog"),
        ),

    );


    return Scaffold(
      appBar: _appBar,
      body: _body,
      
    );
  }
}