import 'package:flutter/material.dart';

class AlignControlPage extends StatelessWidget {
  const AlignControlPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('Align-Stack'),
      centerTitle: false,
    );

    Widget _body = Center(
      child: Container(
        width: 400,
        height: 500,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment(1, -0.2),
              child: Icon(Icons.home, size: 40, color: Colors.white),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.search, size: 30, color: Colors.white),
            ),
            Align(
              alignment: Alignment.bottomRight,
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
