import 'package:flutter/material.dart';
import 'RowPage.dart';

class ExpandLayoutPage extends StatelessWidget {
  const ExpandLayoutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('Expanded'),
      centerTitle: false,
    );

    Widget _body = Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: IconContainer(Icons.home, color: Colors.orange),
          ),
          Expanded(
            flex: 5,
            child: IconContainer(Icons.home, color: Colors.black), //宽度100 不起作用
          ),
          IconContainer(Icons.search, color: Colors.blue), //默认宽度100 起作用
        ],
      ),
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
