import 'package:flutter/material.dart';

import 'package:newbieflutter/pages/Home.dart';
import 'package:newbieflutter/pages/Categroy.dart';
import 'package:newbieflutter/pages/Setting.dart';
import 'package:newbieflutter/pages/Mine.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    MinePage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // appBar: AppBar(
      //   title:Text('newbie'),
      // ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex, //配置对应的索引值选中
        onTap: (int index){
          setState(() {//改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 36.0, //icon的大小
        fixedColor: Colors.deepPurple,//选中的颜色
        type: BottomNavigationBarType.fixed,//配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类'),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('设置'),
            ),
          BottomNavigationBarItem(
            icon:Icon(Icons.people),
            title: Text('我的'),
            ),
        ],
      ),


    );

  }
}


// Main 文件抽离之前代码
class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: Text("tabBar"),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            ),
            
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            )
          ],
        ),
      )
    );
  }
}