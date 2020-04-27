import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  var _username=new TextEditingController();   //初始化的时候给表单赋值
  var _password;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text='初始值';
  }

  @override
  Widget build(BuildContext context) {
    
    Widget _appBar = AppBar(
      title: Text('TextField'),
      centerTitle: true,

    );

    Widget _body = Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        // child:TextDemo() ,    
        child:Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名"
              ),
              controller: _username,
              onChanged: (value){
                 setState(() {
                    _username.text=value; 
                 });
              },
              
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "密码"
              ),             
              onChanged: (value){
                 setState(() {
                    this._password=value; 
                 });
              },
              
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("登录"),
                onPressed: (){
                  print(this._username.text);
                  print(this._password);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ) ,     
      ),

    );

    return Scaffold(
      appBar: _appBar,
      body: _body,

    );
  }
}