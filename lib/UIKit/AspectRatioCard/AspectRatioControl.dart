import 'package:flutter/material.dart';

class AspectRadioPage extends StatelessWidget {
  const AspectRadioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('AspectRadio'),
      centerTitle: false,
    );

    Widget _body = Container(
      width: 400,
      color: Colors.yellowAccent,
      child: AspectRatio(
        aspectRatio: 2.0 / 1.0,
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 3.0 / 1.0,
              child: Container(
                width: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
