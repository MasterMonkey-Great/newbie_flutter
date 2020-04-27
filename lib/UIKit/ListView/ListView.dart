import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('ListView'),
      centerTitle: false,
      bottom: TabBar(tabs: <Widget>[
        Tab(text: "1"),
        Tab(text: "2"),
        Tab(text: "3"),
        Tab(text: "4"),
        Tab(text: "5"),
      ]),
    );

    Widget _listviewone = ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
              title: Text(
                '华北黄淮高温持续 南方强降雨今起强势登场',
                style: TextStyle(
                  fontSize: 24
                ),
              ),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('中国13家运营波音737MAX航空公司均已提出索赔场',
                style: TextStyle(
                  fontSize: 24
                ),),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华中国13家运营波音737MAX航空公司均已提出索赔登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华北黄淮高温持续 势登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华北黄淮高温起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华北黄淮高雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华北黄淮高温持续 南方强降雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),

      ],


    );
    
    Widget _listViewtwo = ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[

         
          ListTile(
              leading:Icon(Icons.settings,size:40),
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          ),
          ListTile(              
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
              trailing:Icon(Icons.home),
          ),
          ListTile(
              leading:Icon(Icons.pages),
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          ),
          ListTile(
              leading:Icon(Icons.settings),
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          ),
          ListTile(
              leading:Icon(Icons.home,color: Colors.yellow,),
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          ),
          ListTile(
              leading:Icon(Icons.pages),
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          )
          
      ],
    );
    
    Widget _listViewThree = ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
         
          ListTile(
              leading:Image.network("https://www.itying.com/images/flutter/1.png"),
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          ),
            ListTile(
              leading:Image.network("https://www.itying.com/images/flutter/2.png"),
              title: Text('保监局50天开32罚单 “断供”违规资金为房市降温'),
              subtitle: Text("中国天气网讯 保监局50天开32罚单 “断供”违规资金为房市降温"),
          ),
          ListTile(
             
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
              trailing:Image.network("https://www.itying.com/images/flutter/2.png")
          ),
          ListTile(              
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
              trailing:Icon(Icons.home),
          ),
          ListTile(
              leading:Icon(Icons.pages),
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          ),
          ListTile(
              leading:Icon(Icons.settings),
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          ),
          ListTile(
              leading:Icon(Icons.home,color: Colors.yellow,),
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          ),
          ListTile(
              leading:Icon(Icons.pages),
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          )
          
      ],
    );

    Widget _listViewFour = ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
          Image.network("https://www.itying.com/images/flutter/1.png"),

          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/2.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/3.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/4.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/1.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/2.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/3.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/1.png"),
          Image.network("https://www.itying.com/images/flutter/2.png"),
          Image.network("https://www.itying.com/images/flutter/3.png"),

      ],
    );
    
    Widget _listViewFive = Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,           
            color: Colors.red,
          ),
          Container(
            width: 180.0,            
            color: Colors.orange,
            child: ListView(
              children: <Widget>[
                Image.network("https://www.itying.com/images/flutter/1.png"),
                Text('我是一个文本')
              ],
            ),
          ),
          Container(          
            width: 180.0,
            color: Colors.blue,
          ),
          Container(           
            width: 180.0,
            color: Colors.deepOrange,
          ),
          Container(           
            width: 180.0,
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );


    Widget _body = TabBarView(
      children: <Widget>[
        _listviewone,
        _listViewtwo,
        _listViewThree,
        _listViewFour,
        _listViewFive,
      ],

    );

    Widget _sacff = Scaffold(
      appBar: _appBar,
      body: _body,

    );

    return DefaultTabController(length: 5, child: _sacff);
  }
}