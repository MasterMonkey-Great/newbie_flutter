

import 'package:flutter/material.dart';
import 'package:newbieflutter/UIKit/Botton/ButtonShow.dart';
import 'package:newbieflutter/tabs/Tabs.dart';

import 'package:newbieflutter/UIKit/NavTab/TabBarController.dart';
import 'package:newbieflutter/UIKit/NavTab/AppBarBottom.dart';
import 'package:newbieflutter/UIKit/NavTab/AppBarTop.dart';

import 'package:newbieflutter/UIKit/Widget/StatefulWidgetPage.dart';
import 'package:newbieflutter/UIKit/Widget/StatelessWidgetPage.dart';

import 'package:newbieflutter/UIKit/PadingRowColumuExpanded/ColumnPage.dart';
import 'package:newbieflutter/UIKit/PadingRowColumuExpanded/ExpandLayout.dart';
import 'package:newbieflutter/UIKit/PadingRowColumuExpanded/Expanded.dart';
import 'package:newbieflutter/UIKit/PadingRowColumuExpanded/PaddingPage.dart';
import 'package:newbieflutter/UIKit/PadingRowColumuExpanded/RowPage.dart';

import 'package:newbieflutter/UIKit/AlignStackPositioned/AlignControl.dart';
import 'package:newbieflutter/UIKit/AlignStackPositioned/PositionedControl.dart';
import 'package:newbieflutter/UIKit/AlignStackPositioned/StackControl.dart';

import 'package:newbieflutter/UIKit/AspectRatioCard/AspectRatioControl.dart';
import 'package:newbieflutter/UIKit/AspectRatioCard/CardControl.dart';
import 'package:newbieflutter/UIKit/AspectRatioCard/CardListControl.dart';
import 'package:newbieflutter/UIKit/AspectRatioCard/CardListDataPage.dart';

import 'package:newbieflutter/UIKit/ListView/ListDataView.dart';
import 'package:newbieflutter/UIKit/ListView/ListView.dart';

import 'package:newbieflutter/UIKit/GridView/GridDataView.dart';
import 'package:newbieflutter/UIKit/GridView/GridView.dart';

import 'package:newbieflutter/UIKit/Wrap/WrapView.dart';

import 'package:newbieflutter/UIKit/TextField/TextFieldPage.dart';
import 'package:newbieflutter/UIKit/TextField/TestFieldLess.dart';

import 'package:newbieflutter/UIKit/SimpleDialog/SimpleDialog.dart';
import 'package:newbieflutter/UIKit/DrawerHeader/DrawerHeader.dart';

import 'package:newbieflutter/UIKit/OverLay/OverLay.dart';
import 'package:newbieflutter/UIKit/OverLay/OverlayStateful.dart';

import 'package:newbieflutter/UIKit/RouterPushReplace/RouterMainPage.dart';
import 'package:newbieflutter/UIKit/RouterPushReplace/Page/Form.dart';
import 'package:newbieflutter/UIKit/RouterPushReplace/Page/Login.dart';
import 'package:newbieflutter/UIKit/RouterPushReplace/Page/Product.dart';
import 'package:newbieflutter/UIKit/RouterPushReplace/Page/ProductInfo.dart';
import 'package:newbieflutter/UIKit/RouterPushReplace/Page/RegisterFirst.dart';
import 'package:newbieflutter/UIKit/RouterPushReplace/Page/RegisterSecond.dart';
import 'package:newbieflutter/UIKit/RouterPushReplace/Page/RegisterThird.dart';
import 'package:newbieflutter/UIKit/RouterPushReplace/Page/Search.dart';
import 'package:newbieflutter/UIKit/RouterPushReplace/MaterialPageRoute/NewsList.dart';

import 'package:newbieflutter/Animation/AnimationLogo.dart';


import 'package:newbieflutter/NetWork/WebSocket/websocket.dart';
import 'package:web_socket_channel/io.dart';
import 'package:newbieflutter/NetWork/WebSocket/websocketgo.dart';



//配置路由
final routes={
      '/':(context)=>Tabs(),
      '/buttonshow':(context)=> ButtonShowPage(),

      '/tabbarpage':(context)=> TabBarControllerPage(),
      '/appbarbottom':(context) => AppBarBottomPage(),
      '/appbartop':(context) => AppBarTopPage(),

      '/statefulWidgetet':(context)=> StatefilWidgetPage(),
      '/statelessWidget':(context) => StatelssWidgetPage(),
      
      '/columnpage':(context) => ColumnPage(),
      '/expandLayout':(context) => ExpandLayoutPage(),
      '/expandpage':(context) => ExpandedPage(),
      '/paddingpage':(context) => PaddingPage(),
      '/rowpage':(context) => RowPage(),
      
      '/aligncontrolpage':(context) => AlignControlPage(),
      '/positionedpage':(context) => PositionedControlPage(),
      '/stackcontrolpage':(context) => StackControlPage(),
      
      '/aspectradiopage':(context) => AspectRadioPage(),
      '/cardcontrolpage':(context) => CartControlPage(),
      '/cardlistpage':(context) => CardListPage(),
      '/cardlistdatapage':(context) => CardListDataPage(),

      '/listviewpage':(context) => ListViewPage(),
      '/listdataviewpage':(context) => ListDataViewPage(),

      '/gridviewpage':(context) => GridViewPage(),
      '/gridviewdatapage':(context) => GridDataViewPage(),

      '/wrapviewpage':(context) => WrapViewPage(),

      '/textfieldstateful':(context) => TextFieldPage(),
      '/testfieldLess':(context) => TextFieldLessPage(),

      '/simpledialog':(context) => SimpleDialogPage(),

      '/drawerheaderpage':(context) => DrawerHeaderPage(),

      '/overlaypage':(context) => OverLayPage(),
      '/overlaystateful':(content) => OverLayStatePage(title: 'Overlay',),

      '/routerpushreplace':(context) => RoutMainPage(),
      '/form':(context)=>FormPage(),
      '/product':(context)=>ProductPage(),
      '/productinfo':(context,{arguments})=>ProductInfoPage(arguments:arguments),
      '/search':(context,{arguments})=>SearchPage(arguments:arguments),
      '/login':(context)=>LoginPage(),
      '/registerFirst':(context)=>RegisterFirstPage(),
      '/registerSecond':(context)=>RegisterSecondPage(),
      '/registerThird':(context)=>RegisterThirdPage(),
      '/materialpagerouter':(context) => NewsListPage(title: '新闻列表'),

      '/anmiationapp':(context) => LogoAppor(),

      '/websocket':(context) => WebsocketPage(title: 'WebSocket Demo', channel: IOWebSocketChannel.connect('ws://echo.websocket.org')),
      '/websocketgo':(context) => WebsocketGoPage(title: 'Flutter Web', channel: IOWebSocketChannel.connect('ws://192.168.80.135/echo'))

            
};



//固定写法
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};