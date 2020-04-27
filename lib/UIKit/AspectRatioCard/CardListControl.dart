import 'package:flutter/material.dart';

class CardListPage extends StatelessWidget {
  const CardListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('CardList'),
      centerTitle: false,
    );

    Widget _body = ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                      "https://www.itying.com/images/flutter/2.png",
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxx"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/3.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/3.png')),
                title: Text("xxxxxxxx"),
                subtitle: Text("xxxxxxxxxx"),
              )
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
