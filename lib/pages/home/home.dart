import 'package:authify/pages/login/animation_login_page.dart';
import 'package:authify/resources/widget/avatar.dart';
import 'package:authify/resources/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:authify/resources/style.dart' as myStyle;
import 'package:authify/resources/animation/slide_page_route.dart';

class HomePage extends StatelessWidget {

  String name;
  AnimationController animationController;
  HomePage(this.name, this.animationController);

  double _deviceHeight;
  double _deviceWidth;

  @override
  Widget build(BuildContext context) {

    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    onButtonPress(){
      Navigator.pushReplacement(context, SlidePageRoute(child: AnimationLoginPage()));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AvatarWidget(deviceHeight: _deviceHeight, animationController: animationController,),
            SizedBox(height: 20,),
            Text("Welcome, $name!", style: myStyle.name,),
            SizedBox(height: 20,),
            ButtonWidget(deviceWidth: _deviceWidth, title: "LOG OUT", onTap: onButtonPress,)
          ],
        ),
      ),
    );
  }
}
