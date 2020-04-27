import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: <Widget>[
    //     RaisedButton(
    //       child: Text("跳转到表单页面"),
    //       onPressed: (){
    //            // Navigator.pushNamed(context, '/form');
    //       },
    //     )
    //   ],
    // );

    Widget _appBar = AppBar(
      title: Text('分类'),
      centerTitle: true,
    );

    Widget _body = Center(
      child: Container(
        child: Text(
          '菜鸟你好，flutter 控件真诡异',
          textAlign: TextAlign.start,
          textDirection: TextDirection.rtl,
          overflow: TextOverflow.ellipsis,
          // overflow:TextOverflow.fade ,
          maxLines: 2,
          textScaleFactor: 1.8,
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.red,
              // color:Color.fromARGB(a, r, g, b)
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.dashed,
              letterSpacing: 5.0),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(
            //  Radius.circular(150),    //圆形
            Radius.circular(10),
          ),
        ),
        // padding:EdgeInsets.all(20),

        // padding:EdgeInsets.fromLTRB(10, 30, 5, 0)

        margin: EdgeInsets.fromLTRB(10, 30, 5, 0),

        // transform:Matrix4.translationValues(100,0,0)

        // transform:Matrix4.rotationZ(0.3)

        // transform:Matrix4.diagonal3Values(1.2, 1, 1)

        alignment: Alignment.bottomLeft,
      ),

      // child: Text(
      //   "你好菜鸟",
      //   textDirection: TextDirection.ltr,
      //   style: TextStyle(
      //     fontSize:40.0,
      //     color: Color.fromRGBO(240, 233, 121, 0.5),
      //     //height:50,
      //   ),

      // ),
    );

    return Scaffold(
      appBar: _appBar,
      backgroundColor: Colors.white,
      body: _body,
    );
  }
}
