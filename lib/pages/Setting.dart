import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {

    Widget _appBar = AppBar(
      title: Text('设置'),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: (){
          print('menu');

        },
      ),

      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              print('search');
            },
          ),
          IconButton(
            icon: Icon(Icons.add_alarm),
            onPressed: (){
              print('settings');
            },
          )
      ],


    );

    Widget _content = ListView(
      children: <Widget>[
        ListTile(
          title: Text("我是一个文本"),
        ),
         ListTile(
          title: Text("我是一个文本"),
        ),
         ListTile(
          title: Text("我是一个文本"),
        ),
         ListTile(
          title: Text("我是一个文本"),
        )
      ],

    );

    

    return Scaffold(
      appBar: _appBar,
      body:_content,

    );

  }

    
}