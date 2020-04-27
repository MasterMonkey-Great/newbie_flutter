import 'package:flutter/material.dart';
import 'package:newbieflutter/res/ListData.dart';

class GridDataViewPage extends StatelessWidget {
  const GridDataViewPage({Key key}) : super(key: key);

// 第一部分
  List<Widget> _getoneListData() {
    List<Widget> list = new List();

    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Colors.blue,
        // height: 400,  //设置高度没有反应
      ));
    }
    return list;
  }

// 第二部分
  List<Widget> _gettwoListData() {
    var tempList = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(height: 12),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),

        // height: 400,  //设置高度没有反应
      );
    });
    // ('xxx','xxx')
    return tempList.toList();
  }

// 第三部分
  Widget _getthreeListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 12),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),

      // height: 400,  //设置高度没有反应
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('GridDataView'),
      centerTitle: false,
      bottom: TabBar(tabs: <Widget>[
        Tab(text: "1"),
        Tab(text: "2"),
        Tab(text: "3"),
      ]),
    );

// 第一部分
    Widget _onegridview = GridView.count(
      crossAxisSpacing: 20.0, //水平子 Widget 之间间距
      mainAxisSpacing: 20.0, //垂直子 Widget 之间间距
      padding: EdgeInsets.all(10),
      crossAxisCount: 2, //一行的 Widget 数量
      childAspectRatio: 0.7, //宽度和高度的比例
      children: this._getoneListData(),
    );

//  第二部分
    Widget _twogridview = GridView.count(
      crossAxisSpacing: 10.0, //水平子 Widget 之间间距
      mainAxisSpacing: 10.0, //垂直子 Widget 之间间距
      padding: EdgeInsets.all(10),
      crossAxisCount: 2, //一行的 Widget 数量
      // childAspectRatio:0.7,  //宽度和高度的比例
      children: this._gettwoListData(),
    );
// 第三部分
    Widget _threegridview = GridView.builder(
      //注意
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10.0, //水平子 Widget 之间间距
        mainAxisSpacing: 10.0, //垂直子 Widget 之间间距
        crossAxisCount: 2, //一行的 Widget 数量
      ),
      itemCount: listData.length,
      itemBuilder: this._getthreeListData,
    );

    Widget _body = Container(
      child: TabBarView(
        children: <Widget>[
          _onegridview,
          _twogridview,
          _threegridview,
        ],
      ),
    );

    Widget _sacff = Scaffold(
      appBar: _appBar,
      body: _body,
    );

    return DefaultTabController(length: 3, child: _sacff);
  }
}
