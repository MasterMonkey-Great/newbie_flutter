import 'package:flutter/material.dart';
import 'package:newbieflutter/res/ListData.dart';

class ListDataViewPage extends StatelessWidget {
  //const ListDataViewPage({Key key}) : super(key: key);

  // 第一部分
  List<Widget> _getoneData() {
    return [
      ListTile(
        title: Text("我是一个列表"),
      ),
      ListTile(
        title: Text("我是一个列表"),
      ),
      ListTile(
        title: Text("我是一个列表"),
      ),
    ];
  }

  // 第二部分
  List<Widget> _gettwoData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("我是$i列表"),
      ));
    }
    return list;
  }

  // 第三部分
  List<Widget> _getthreeData() {
    var tempList = listData.map((value) {
      return ListTile(
          leading: Image.network(value["imageUrl"]),
          title: Text(value["title"]),
          subtitle: Text(value["author"]));
    });
    // ('124124','124214')
    return tempList.toList();
  }

  // 第四部分
  List list = new List();
  ListDataViewPage() {
    for (var i = 0; i < 20; i++) {
      this.list.add('我是第$i条');
    }
  }

  // 第五部分
  Widget _getListData(context, index) {
    return ListTile(
        title: Text(listData[index]["title"]),
        leading: Image.network(listData[index]["imageUrl"]),
        subtitle: Text(listData[index]["author"]));
  }

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('ListDataView'),
      centerTitle: false,
      bottom: TabBar(tabs: <Widget>[
        Tab(text: "1"),
        Tab(text: "2"),
        Tab(text: "3"),
        Tab(text: "4"),
        Tab(text: "5"),
      ]),
    );

// 第一部分
    Widget _listviewone = ListView(
      children: this._getoneData(),
    );

// 第二部分
    Widget _listtwoview = ListView(
      children: this._gettwoData(),
    );

// 第三部分
    Widget _listthreeview = ListView(
      children: this._getthreeData(),
    );

// 第四部分
    Widget _listfourView = ListView.builder(
        itemCount: this.list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(this.list[index]),
          );
        });

// 第五部分

    Widget _fivelistview = ListView.builder(
        itemCount: listData.length, itemBuilder: this._getListData);

    Widget _body = Container(
      child: TabBarView(
        children: <Widget>[
          _listviewone,
          _listtwoview,
          _listthreeview,
          _listfourView,
          _fivelistview,
        ],
      ),
    );

    Widget _sacff =  Scaffold(
      appBar: _appBar,
      body: _body,
    );
    return DefaultTabController(length: 5, child: _sacff);
  }
}
