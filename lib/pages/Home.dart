import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('首页'),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          print('menu');
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            print('search');
          },
        ),
        IconButton(
          icon: Icon(Icons.add_alarm),
          onPressed: () {
            print('settings');
          },
        )
      ],
    );

    // Widget _content = Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   children: <Widget>[
    //     RaisedButton(
    //         child: Text("跳转到搜索页面"),
    //         onPressed: () {
    //           //路由跳转
    //           // Navigator.pushNamed(context, '/search',arguments: {
    //           //   "id":123
    //           // });
    //         },
    //         color: Theme.of(context).accentColor,
    //         textTheme: ButtonTextTheme.primary),
    //     SizedBox(height: 20),
    //     RaisedButton(
    //         child: Text("按钮控件走秀"),
    //         onPressed: () {
    //           Navigator.pushNamed(context, '/buttonshow');
    //         }),
    //     SizedBox(height: 20),
    //     RaisedButton(
    //       child: Text("TabController 体验"),
    //       onPressed: () {
    //         Navigator.pushNamed(context, '/tabbarpage');
    //       },
    //     ),
    //     SizedBox(height: 20),
    //     RaisedButton(
    //       child: Text("StatefulWidget 体验"),
    //       onPressed: () {
    //         Navigator.pushNamed(context, '/statefulWidgetet');
    //       },
    //     ),
    //     SizedBox(height: 20),
    //     RaisedButton(
    //       child: Text("StatelessWidget 体验"),
    //       onPressed: () {
    //         Navigator.pushNamed(context, '/statelessWidget');
    //       },
    //     ),
    //   ],
    // );

    
    Widget _body = Column(
      
      children: <Widget>[
        
      ],

    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }
}
