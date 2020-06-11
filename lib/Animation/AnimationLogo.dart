import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class LogoAppor extends StatefulWidget {
  LogoAppor({Key key}) : super(key: key);

  @override
  _LogoApporState createState() => _LogoApporState();
}

class _LogoApporState extends State<LogoAppor> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        height: animation.value,
        width: animation.value,
        child: new FlutterLogo(),
      ),

    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
  
}