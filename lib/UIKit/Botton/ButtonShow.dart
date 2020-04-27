import 'package:flutter/material.dart';
import 'GradientButton.dart';

class ButtonShowPage extends StatelessWidget {
  const ButtonShowPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text("按钮Show"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.check_circle),
          onPressed: () {
            print('IconButton');
          },
        )
      ],
    );
    onTap(){
    print("button click");
    }
    Widget _content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GradientButton(
            colors: [Colors.orange,Colors.red],
            height: 50.0,
            child: Text("Submit"),
            onTap:onTap ,
          ),
          GradientButton(
            height: 50.0,
            colors: [Colors.lightGreen, Colors.green[700]],
            child: Text("Submit"),
            onTap: onTap,
          ),
          GradientButton(
            height: 50.0,
            colors: [Colors.lightBlue[300], Colors.blueAccent],
            child: Text("Submit"),
            onTap: onTap,
          ),
          ],

        ),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('普通按钮'),
              onPressed: () {
                print("普通按钮");
              },
            ),
            SizedBox(width: 5),
            RaisedButton(
              child: Text('颜色按钮'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                print("有颜色按钮");
              },
            ),
            SizedBox(width: 5),
            RaisedButton(
              child: Text('阴影按钮'),
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 20,
              onPressed: () {
                print("有阴影按钮");
              },
            ),
            SizedBox(width: 5),
            RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text('图标按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                // onPressed: null,
                onPressed: () {
                  print("图标按钮");
                })
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50,
              width: 400,
              child: RaisedButton(
                child: Text('宽度高度'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20,
                onPressed: () {
                  print("宽度高度");
                },
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 60,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text('自适应按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: () {
                    print("自适应按钮");
                  },
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text('圆角按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  print("圆角按钮");
                }),
            Container(
              height: 80,
              child: RaisedButton(
                  child: Text('圆形按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  splashColor: Colors.red,
                  shape: CircleBorder(side: BorderSide(color: Colors.white)),
                  onPressed: () {
                    print("圆形按钮");
                  }),
            ),
            FlatButton(
              child: Text("按钮"),
              color: Colors.blue,
              textColor: Colors.yellow,
              onPressed: () {
                print('FlatButton');
              },
            ),
            SizedBox(width: 10),
            OutlineButton(
                child: Text("按钮"),
                //  color: Colors.red,  //没有效果
                //  textColor: Colors.yellow,
                onPressed: () {
                  print('FlatButton');
                })
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                height: 50,
                child: OutlineButton(child: Text("注册"), onPressed: () {}),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('登录'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: () {
                    print("宽度高度");
                  },
                ),
                RaisedButton(
                  child: Text('注册'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: () {
                    print("宽度高度");
                  },
                ),
                CustomButton(
                    text: "自定义按钮",
                    height: 60,
                    width: 100,
                    pressed: () {
                      print('自定义按钮');
                    })
              ],
            )
          ],
        )
      ],
    );

    return Scaffold(
      appBar: _appBar,
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 40,
          ),
          onPressed: () {
            print('FloatingActionButton');
          },
          backgroundColor: Colors.yellow),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: _content,
    );
  }
}

class CustomButton extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;
  const CustomButton(
      {this.text = '', this.pressed = null, this.width = 80, this.height = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
