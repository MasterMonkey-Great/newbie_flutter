import 'package:flutter/material.dart';

class PositionedControlPage extends StatelessWidget {
  const PositionedControlPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('Positioned - Stack'),
      centerTitle: false,
    );

    Widget _body = Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.grey,
        child: Stack(
          // alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              left: 10,
              child: Icon(Icons.home, size: 40, color: Colors.white),
            ),
            Positioned(
              bottom: 0,
              left: 100,
              child: Icon(Icons.search, size: 30, color: Colors.white),
            ),
            Positioned(
              right: 0,
              child: Icon(Icons.settings_applications,
                  size: 30, color: Colors.white),
            )
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
