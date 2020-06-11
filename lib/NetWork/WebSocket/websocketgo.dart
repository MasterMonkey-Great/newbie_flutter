import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';


class WebsocketGoPage extends StatefulWidget {
  final String title;
  final WebSocketChannel channel;

  WebsocketGoPage({Key key,@required this.title,@required this.channel}) : super(key: key);

  @override
  _WebsocketGoPageState createState() => new _WebsocketGoPageState();
}

class ClicksPerYear {
  final String year;
  final int clicks;
  final charts.Color color;

  ClicksPerYear(this.year, this.clicks, Color color)
      : this.color = new charts.Color(
      r: color.red, g: color.green, b: color.blue, a: color.alpha);
}


class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}

class _WebsocketGoPageState extends State<WebsocketGoPage> {
  int _counter = 4;

  final serialdata = [
    new TimeSeriesSales(new DateTime(2017, 9, 1), 5),
    new TimeSeriesSales(new DateTime(2017, 9, 2), 25),
    new TimeSeriesSales(new DateTime(2017, 9, 3), 100),
    new TimeSeriesSales(new DateTime(2017, 9, 4), 75),
  ];
  Random random = new Random();

  void _incrementCounter() {
    widget.channel.sink.add("request");
    widget.channel.stream.listen((data) {
    setState(() {
        _counter++;
        serialdata.add(new TimeSeriesSales(new DateTime(2017, 9, _counter), int.tryParse(data) ?? 0));
        if(serialdata.length>20) {
          serialdata.removeAt(0);
        }
    });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<charts.Series<TimeSeriesSales, DateTime>> seriesList = [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: serialdata,
      )
    ];

    var chart = new charts.TimeSeriesChart(
      seriesList,
      animate: false,
    );
    var chartWidget = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 200.0,
        child: chart,
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            chartWidget,
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}