import 'package:flutter/material.dart';
import 'RowPage.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('Column'),
      centerTitle: false,
    );

    Widget _body = Container(
      height: 800.0,
      width: 400.0,
      color: Colors.pink,
      child: Column(    
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,   
        children: <Widget>[
          ListTile(
            title:Text("张三",style: TextStyle(fontSize: 28)) ,
            subtitle: Text("高级工程师"),
          ),
          IconContainer(Icons.search,color: Colors.blue),
          IconContainer(Icons.home,color: Colors.orange),
          IconContainer(Icons.select_all,color: Colors.red),
        ],
      ),

    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}