import 'package:flutter/material.dart';

class WrapViewPage extends StatelessWidget {
  const WrapViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Widget _appbar = AppBar(
      title: Text('Wrap'),
      centerTitle: true,
      
    );

    Widget _body = Wrap(
      spacing: 10,
      runSpacing: 10,
      //direction: Axis.horizontal,
      //alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.center,

      children: <Widget>[
        MyButton("第1集"),
                MyButton("第2集"),
                MyButton("第3集"),
                MyButton("第4集"),
                MyButton("第5集"),
                MyButton("第6集"),
                MyButton("第7集"),
                MyButton("第8集"),
                MyButton("第9集"),
                MyButton("第10集"),
                MyButton("第11集"),
                 MyButton("第3集"),
                MyButton("第4集"),
                MyButton("第5集"),
                MyButton("第6集"),
                MyButton("第7集"),
                MyButton("第8集"),
                MyButton("第9集"),
                MyButton("第10集"),
                MyButton("第11集"),
      ],

    );

    
    return Scaffold(
      appBar: _appbar,
      body: _body,
    );
  }
}

class MyButton extends StatelessWidget{
  final String text;
  const MyButton(this.text,{Key key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor:Theme.of(context).accentColor,
      onPressed: (){    
        print(this.text);    
      }
    );
  }
}