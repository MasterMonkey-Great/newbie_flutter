import 'package:flutter/material.dart';

class RoutMainPage extends StatefulWidget {
  RoutMainPage({Key key}) : super(key: key);

  @override
  _RoutMainPageState createState() => _RoutMainPageState();
}

class _RoutMainPageState extends State<RoutMainPage> {
  @override
  Widget build(BuildContext context) {
     Widget _appbar = AppBar(
      title: Text('界面跳转传值'),
      
    );

    Widget _body = Container(
      child:  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text("跳转到搜索页面"),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/search',arguments: {
                "id":123
              });
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary
        ),
        SizedBox(height: 20),  
         RaisedButton(
            child: Text("跳转到商品页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            }
        ), 

        SizedBox(height: 20),  

        RaisedButton(
          child: Text("跳转到登录页面"),
          onPressed: (){
              Navigator.pushNamed(context, '/login');
          },
        ),

        SizedBox(height: 20),  

        RaisedButton(
          child: Text("跳转到注册页面  -- 静态路由反向传值"),
          onPressed: (){
             Navigator.pushNamed(context, '/registerFirst');
          },
        ),  

        SizedBox(height: 20),  

        RaisedButton(
          child: Text("跳转到新闻页面  -- 动态路由反向传值"),
          onPressed: (){
             Navigator.pushNamed(context, '/materialpagerouter');
          },
        ),     
   

      ],
    ),
      
    );


    return Scaffold(
      appBar: _appbar,
      body: _body,
    );
  }
}



