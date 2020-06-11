import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('我的'),
      backgroundColor: Colors.grey,
      centerTitle: true,
      // leading: IconButton(
      //   icon: Icon(Icons.menu),
      //   onPressed: (){
      //     print('menu');

      //   },
      // ),

      // actions: <Widget>[
      //   IconButton(
      //       icon: Icon(Icons.search),
      //       onPressed: (){
      //         print('search');
      //       },
      //     ),
      //     IconButton(
      //       icon: Icon(Icons.settings),
      //       onPressed: (){
      //         print('settings');
      //       },
      //     )
      // ],
      bottom: TabBar(
          tabs: <Widget>[Tab(text: "FlutterUIKit"), Tab(text: "NetData"), Tab(text: "Dart")]),
    );

    Widget _content = TabBarView(
      children: <Widget>[
        ListView(
          children: <Widget>[
            ListTile(
              title: Text("按钮控件走秀"),
              onTap: () => Navigator.pushNamed(context, '/buttonshow'),

            ),
            ListTile(
              title: Text("TabController 体验"),
              onTap: () => Navigator.pushNamed(context, '/tabbarpage'),
            ),
            ListTile(
              title: Text("TabController Bottom"),
              onTap: () => Navigator.pushNamed(context, '/appbarbottom'),
            ),
            ListTile(
              title: Text("TabController Top"),
              onTap: () => Navigator.pushNamed(context, '/appbartop'),
            ),

            ListTile(
              title: Text("StatefulWidget 体验"),
              onTap: () => Navigator.pushNamed(context, '/statefulWidgetet'),
            ),
            ListTile(
              title: Text("StatelessWidget 体验"),
              onTap: () => Navigator.pushNamed(context, '/statelessWidget'),
            ),
            ListTile(
              title: Text("Column"),
              onTap: () => Navigator.pushNamed(context, '/columnpage'),
            ),
            ListTile(
              title: Text("ExpandLayout"),
              onTap: () => Navigator.pushNamed(context, '/expandLayout'),
            ),
            ListTile(
              title: Text("Expanded"),
              onTap: () => Navigator.pushNamed(context, '/expandpage'),
            ),
            ListTile(
              title: Text("Padding"),
              onTap: () => Navigator.pushNamed(context, '/paddingpage'),
            ),
            ListTile(
              title: Text("Row"),
              onTap: () => Navigator.pushNamed(context, '/rowpage'),
            ),
            ListTile(
              title: Text("Align-Stack"),
              onTap: () => Navigator.pushNamed(context, '/aligncontrolpage'),
            ),
            ListTile(
              title: Text("Positioned-Stack"),
              onTap: () => Navigator.pushNamed(context, '/positionedpage'),
            ),
            ListTile(
              title: Text("Stack"),
              onTap: () => Navigator.pushNamed(context, '/stackcontrolpage'),
            ),
            ListTile(
              title: Text("AspectRadio"),
              onTap: () => Navigator.pushNamed(context, '/aspectradiopage'),
            ),
            ListTile(
              title: Text("Card"),
              onTap: () => Navigator.pushNamed(context, '/cardcontrolpage'),
            ),
            ListTile(
              title: Text("Cardlist"),
              onTap: () => Navigator.pushNamed(context, '/cardlistpage'),
            ),
            ListTile(
              title: Text("Cardlist-Data"),
              onTap: () => Navigator.pushNamed(context, '/cardlistdatapage'),
            ),
            ListTile(
              title: Text("ListView"),
              onTap: () => Navigator.pushNamed(context, '/listviewpage'),
            ),
            ListTile(
              title: Text("ListdataView"),
              onTap: () => Navigator.pushNamed(context, '/listdataviewpage'),
            ),
            ListTile(
              title: Text("GridView"),
              onTap: () => Navigator.pushNamed(context, '/gridviewpage'),
            ),
            ListTile(
              title: Text("GridviewData"),
              onTap: () => Navigator.pushNamed(context, '/gridviewdatapage'),
            ),
            ListTile(
              title: Text("WrapView"),
              onTap: () => Navigator.pushNamed(context, '/wrapviewpage'),
            ),
            ListTile(
              title: Text("TextfieldStateful"),
              onTap: () => Navigator.pushNamed(context, '/textfieldstateful'),
            ),
            ListTile(
              title: Text("TestfieldLess"),
              onTap: () => Navigator.pushNamed(context, '/testfieldLess'),
            ),
            ListTile(
              title: Text("showDialog"),
              onTap: () => Navigator.pushNamed(context, '/simpledialog'),
            ),
            ListTile(
              title: Text("DrawerHeader"),
              onTap: () => Navigator.pushNamed(context, '/drawerheaderpage'),
            ),
            ListTile(
              title: Text("OverLaypage"),
              onTap: () => Navigator.pushNamed(context, '/overlaypage'),
            ),
            ListTile(
              title: Text("OverlayStateful"),
              onTap: () => Navigator.pushNamed(context, '/overlaystateful'),
            ),
            ListTile(
              title: Text("界面跳转路由替换界面传值"),
              onTap: () => Navigator.pushNamed(context, '/routerpushreplace'),
            ),

            ListTile(
              title: Text("动画"),
              onTap: () => Navigator.pushNamed(context, '/anmiationapp'),
            ),
            ListTile(
              title: Text("WebSocket"),
              onTap: () => Navigator.pushNamed(context, '/websocket'),
            ),

            ListTile(
              title: Text("WebSocket-GO"),
              onTap: () => Navigator.pushNamed(context, '/websocketgo'),
            ),


            ListTile(
              title: Text(""),
              onTap: () => Navigator.pushNamed(context, ''),
            ),


            ListTile(
              title: Text(""),
              onTap: () => Navigator.pushNamed(context, ''),
            ),


            ListTile(
              title: Text(""),
              onTap: () => Navigator.pushNamed(context, ''),
            ),


            ListTile(
              title: Text(""),
              onTap: () => Navigator.pushNamed(context, ''),
            ),


            ListTile(
              title: Text(""),
              onTap: () => Navigator.pushNamed(context, ''),
            ),


            ListTile(
              title: Text(""),
              onTap: () => Navigator.pushNamed(context, ''),
            ),

          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("第二个tab")),
            ListTile(title: Text("第二个tab")),
            ListTile(title: Text("第二个tab"))
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("第3个tab")),
            ListTile(title: Text("第3个tab")),
            ListTile(title: Text("第3个tab"))
          ],
        )
      ],
    );

    Widget _sacff = Scaffold(
      appBar: _appBar,
      body: _content,
    );

    return DefaultTabController(length: 3, child: _sacff);
  }
}
