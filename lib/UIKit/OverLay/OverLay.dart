import 'package:flutter/material.dart';

class OverLayPage extends StatelessWidget {

  LayerLink layerLink = new LayerLink();

  // const OverLayPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar = AppBar(
      title: Text('OverLay各种展示'),
    );

    /**
   * 展示微信下拉的弹窗
   */
    void showWeixinButtonView() {
      OverlayEntry weixinOverlayEntry = new OverlayEntry(builder: (context) {
        return new Positioned(
          top: kToolbarHeight,
          right: 20,
          width: 200,
          height: 320,
          child: new SafeArea(
            child: new Material(
              child: new Container(
                color: Colors.black,
                child: new Column(
                  children: <Widget>[
                    Expanded(
                      child: new ListTile(
                        leading: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        title: new Text(
                          "发起群聊",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: new ListTile(
                        leading: Icon(Icons.add, color: Colors.white),
                        title: new Text("添加朋友",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Expanded(
                      child: new ListTile(
                        leading: Icon(Icons.add, color: Colors.white),
                        title: new Text("扫一扫",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Expanded(
                      child: new ListTile(
                        leading: Icon(Icons.add, color: Colors.white),
                        title: new Text("首付款",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Expanded(
                      child: new ListTile(
                        leading: Icon(Icons.add, color: Colors.white),
                        title: new Text("帮助与反馈",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      
      
      });
      Overlay.of(context).insert(weixinOverlayEntry);
    }

    OverlayEntry createSelectPopupWindow() {
    OverlayEntry overlayEntry = new OverlayEntry(builder: (context) {
      return new Positioned(
        top: 10,
        width: 200,
        child: new CompositedTransformFollower(
          offset: Offset(0.0, 50),
          link: layerLink,
          child: SafeArea(child: new Material(
            child: new Container(
                color: Colors.grey,
                child: new Column(
                  children: <Widget>[
                    new ListTile(
                      title: new Text("选项1"),
                      onTap: () {
                        
                        Toast.show(context: context, message: "选择了选项1");
                        //focusNode.unfocus();
                      },
                    ),
                    new ListTile(
                        title: new Text("选项2"),
                        onTap: () {
                          Toast.show(context: context, message: "选择了选项1");
                          //focusNode.unfocus();
                        }),
                  ],
                )),
          ),
        ),
   
        ),
      );
    });
    Overlay.of(context).insert(overlayEntry);

    new Future.delayed(Duration(seconds: 2)).then((value) {
      overlayEntry.remove();
    });


    return overlayEntry;
  }

    Widget _content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        RaisedButton(
            child: Text("跳转到搜索页面"),
            onPressed: () {
              showWeixinButtonView();
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),
        SizedBox(height: 20),
        RaisedButton(
            child: Text("按钮控件走秀"),
            onPressed: () {
              Toast.show(context: context, message: '按钮控件走秀');
            }),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("TabController 体验"),
          onPressed: () {createSelectPopupWindow();},
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("StatefulWidget 体验"),
          onPressed: () {},
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("StatelessWidget 体验"),
          onPressed: () {},
        ),
      ],
    );

    return Scaffold(
      //appBar: _appBar,
      body: _content,
    );
  }
}

/**
 * 利用overlay实现Toast
 */
class Toast {
  static void show({@required BuildContext context, @required String message}) {
    //创建一个OverlayEntry对象
    OverlayEntry overlayEntry = new OverlayEntry(builder: (context) {
      //外层使用Positioned进行定位，控制在Overlay中的位置
      return new Positioned(
          top: MediaQuery.of(context).size.height * 0.7,
          child: new Material(
            child: new Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: new Center(
                child: new Card(
                  child: new Padding(
                    padding: EdgeInsets.all(8),
                    child: new Text(message),
                  ),
                  color: Colors.grey,
                ),
              ),
            ),
          ));
    });
    //往Overlay中插入插入OverlayEntry
    Overlay.of(context).insert(overlayEntry);
    //两秒后，移除Toast
    new Future.delayed(Duration(seconds: 2)).then((value) {
      overlayEntry.remove();
    });
  }
}
