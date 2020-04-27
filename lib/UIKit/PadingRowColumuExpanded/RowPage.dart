import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('Row'),

    );

    Widget _body = Container(
      height: 800,
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,    
        crossAxisAlignment: CrossAxisAlignment.start,     //用的比较少
        children: <Widget>[
          IconContainer(Icons.search,color: Colors.blue),
          IconContainer(Icons.home,color: Colors.orange),
          IconContainer(Icons.select_all,color: Colors.red),
        ],
      ),

    );

    return Scaffold(
      appBar: _appBar,
      body: _body,

    );
  }
}

class IconContainer extends StatelessWidget {
  
  double size=32.0;
  Color color=Colors.red;
  IconData icon;
  IconContainer(this.icon,{this.color,this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon,size: this.size,color: Colors.white)
      ),
    );
  }
}