import 'package:authify/pages/home/home.dart';
import 'package:flutter/material.dart';

class AnimationHomePage extends StatefulWidget {

  String name;
  AnimationHomePage(this.name);

  @override
  _AnimationHomePageState createState() => _AnimationHomePageState();
}

class _AnimationHomePageState extends State<AnimationHomePage> with SingleTickerProviderStateMixin {

  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 2),
        reverseDuration: Duration(milliseconds: 500)
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomePage(widget.name, _animationController);
  }
}
