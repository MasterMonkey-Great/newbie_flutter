import 'package:flutter/material.dart';

class StatefilWidgetPage extends StatefulWidget {
  StatefilWidgetPage({Key key}) : super(key: key);

  //@override
  _StatefilWidgetPageState createState() => _StatefilWidgetPageState();
}

class _StatefilWidgetPageState extends State<StatefilWidgetPage> {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('StatefulWidget'),
      centerTitle: false,
    );

    Widget _body = Center(
      child: ListView(
        children: <Widget>[
          Column(
              children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList()),
          SizedBox(height: 20),
          RaisedButton(
            child: Text("按钮"),
            onPressed: () {
              setState(() {
                this.list.add('新增数据1');
                this.list.add('新增数据2');
              });
            },
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
