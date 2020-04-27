import 'package:flutter/material.dart';

class TextFieldLessPage extends StatelessWidget {
  const TextFieldLessPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('TextField'),
      centerTitle: true,

    );

    Widget _body = Container(
      child: Column(
          children: <Widget>[
            TextField(),
            SizedBox(height: 20),
            TextField(
              decoration:InputDecoration(
                hintText:"请输入搜索的内容",
                border: OutlineInputBorder()
              ) ,
            ),
             SizedBox(height: 20),
             TextField(
              maxLines: 4,
              decoration:InputDecoration(
                hintText:"多行文本框",
                border: OutlineInputBorder()
              ) ,
            ),
             SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration:InputDecoration(
                hintText:"密码框",
                border: OutlineInputBorder()
              ) ,
            ),
             SizedBox(height: 20),

            TextField(             
              decoration:InputDecoration(               
                border: OutlineInputBorder(),
                labelText: "用户名"
              ) 
              
            ),
             SizedBox(height: 20),
            TextField(    
              obscureText: true,         
              decoration:InputDecoration(               
                border: OutlineInputBorder(),
                labelText: "密码",
                // labelStyle: TextStyle()
              ) 
              
            ),
             SizedBox(height: 20),
             TextField(                   
              decoration:InputDecoration(               
               icon: Icon(Icons.people),
               hintText: "请输入用户名"
              )               
            ),
          ],
      ),

    );

    return Scaffold(
      appBar: _appBar,
      body: _body,


    );
  }
}