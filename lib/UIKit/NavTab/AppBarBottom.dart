import 'package:flutter/material.dart';

class AppBarBottomPage extends StatelessWidget {
  const AppBarBottomPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text("AppBarDemoPage"),
      // backgroundColor: Colors.red,
      centerTitle: true,
      // leading: IconButton(
      //   icon: Icon(Icons.menu),
      //   onPressed: (){
      //     print('menu');
      //   },
      // ),
      // actions: <Widget>[
      //   IconButton(
      //     icon: Icon(Icons.search),
      //     onPressed: (){
      //       print('search');
      //     },
      //   ),
      //   IconButton(
      //     icon: Icon(Icons.settings),
      //     onPressed: (){
      //       print('settings');
      //     },
      //   )
      // ],
      // bottom: TabBar(
      //   tabs: <Widget>[
      //     Tab(text: "热门"),
      //     Tab(text: "推荐")
      //   ],
      // ),
    );

    Widget _tabbarview = TabBarView(
      children: <Widget>[
        ListView(
          children: <Widget>[
            ListTile(title: Text("第一个tab")),
            ListTile(title: Text("第一个tab")),
            ListTile(title: Text("第一个tab"))
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("第二个tab")),
            ListTile(title: Text("第二个tab")),
            ListTile(title: Text("第二个tab"))
          ],
        )
      ],
    );

    Widget _body = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(flex: 10, child: _tabbarview),
          Expanded(
            flex: 4,
            
            child: TabBar(
              labelColor: Colors.red,
            
              tabs: <Widget>[Tab(text: "热门"), Tab(text: "推荐")],
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Expanded(
            //       child:TabBar(
            //         //TabBar 样式调整
            //         // indicatorColor:Colors.blue,
            //         // labelColor:Colors.blue,
            //         // unselectedLabelColor: Colors.white,
            //         // indicatorSize:TabBarIndicatorSize.label ,

            //         tabs: <Widget>[
            //           Tab(text: "热销"),
            //           Tab(text: "推荐"),
            //         ],
            //    ) ,
            //   ),
            //   ],
            // ),
          ),
        ],
      ),
    );

    return DefaultTabController(
      length: 2,
      child: Scaffold(appBar: _appBar, body: _body),
    );
  }
}
