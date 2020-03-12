import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  double deviceWidth;
  String title;
  Function onTap;

  ButtonWidget({this.deviceWidth, this.title, this.onTap});

  @override
    Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
      width: deviceWidth,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: RaisedButton(
          child: Text(title, style: TextStyle(color: Colors.white),),
          color: Colors.orange,
          onPressed: onTap,
        ),
      ),
    );
  }
}
