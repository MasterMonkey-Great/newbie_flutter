


import 'package:flutter/material.dart';
import 'package:newbieflutter/UIKit/Botton/ButtonShow.dart';
import 'package:newbieflutter/tabs/Tabs.dart';

import 'package:newbieflutter/UIKit/NavTab/TabBarController.dart';

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


//配置路由
final routes={
      '/':(context)=>Tabs(),
      '/buttonshow':(context)=> ButtonShowPage(),
      '/tabbarpage':(context)=> TabBarControllerPage(),
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