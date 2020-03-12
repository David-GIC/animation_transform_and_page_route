import 'package:authify/pages/login/login.dart';
import 'package:flutter/material.dart';

class AnimationLoginPage extends StatefulWidget {


  @override
  _AnimationLoginPageState createState() => _AnimationLoginPageState();
}

class _AnimationLoginPageState extends State<AnimationLoginPage> with SingleTickerProviderStateMixin {

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
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LoginPage(animationController: _animationController);
  }
}
