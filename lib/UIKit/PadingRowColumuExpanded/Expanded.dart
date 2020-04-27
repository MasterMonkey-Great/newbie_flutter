import 'package:flutter/material.dart';
import 'RowPage.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('Expanded'),
      centerTitle: false,
    );

    Widget _body = Stack(
      
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: IconContainer(Icons.search,
                    color: Colors.blue) //默认宽度100 不起作用
                ),
            Expanded(
              flex: 2,
              child: IconContainer(Icons.home, color: Colors.orange),
            ),
            Expanded(
              flex: 1,
              child: IconContainer(Icons.select_all, color: Colors.red),
            ),
          ],
        ),
      ],
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
