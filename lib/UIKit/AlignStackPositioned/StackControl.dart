import 'package:flutter/material.dart';

class StackControlPage extends StatelessWidget {
  const StackControlPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('Stack'),
      centerTitle: false,
    );

    Widget _body = Container(
      child: Center(
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Container(
              height: 400,
              width: 300,
              color: Colors.greenAccent,
            ),
            Text(
              '我是新手',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              '我是新手二号',
              style: TextStyle(
                fontSize: 60,
                color: Colors.red,
              ),
            ),
            // Container(
            //   child: Stack(
            //     alignment: Alignment(1, 0.3),//可调式相对位置
            //     children: <Widget>[
            //       Container(
            //         height: 400,
            //         width: 300,
            //         color: Colors.red,
            //       ),
            //       Text('我是一个文本',
            //           style: TextStyle(fontSize: 20, color: Colors.white))
            //     ],
            //   ),
            // ),
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
