import 'package:flutter/material.dart';
import 'package:newbieflutter/NetWork/HttpClient/Http/home_dao.dart';
import 'package:newbieflutter/NetWork/HttpClient/Model/home_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  Future<Null> _handleRefresh() async {
    try {
      HomeModel model = await HomeDao.fetch();
      print(model);
      setState(() {
        // localNavList = model.localNavList;
        // subNavList = model.subNavList;
        // gridNavModel = model.gridNav;
        // salesBoxModel = model.salesBox;
        // bannerList = model.bannerList;
        // _loading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        //_loading = false;
      });
    }
    return null;
  }

  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('首页'),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          _handleRefresh();
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
       drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: DrawerHeader(
                        child: Text("你好flutter"),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.itying.com/images/flutter/2.png"),
                              fit: BoxFit.cover,
                            ))))
              ],
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.home)),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.people)),
              title: Text("用户中心"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.settings)),
              title: Text("设置中心"),
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('右侧侧边栏'),
      ),
    );
  }
}
