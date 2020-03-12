import 'package:flutter/material.dart';

class SlidePageRoute extends PageRouteBuilder {
  final Widget child;

  SlidePageRoute({this.child})
      : super(
      transitionDuration: Duration(milliseconds: 500),
      transitionsBuilder: (BuildContext _context, Animation animation, Animation secondAnimation, Widget child) {
        animation = Tween<Offset>(begin: Offset(1, 1), end: Offset(0,0)).animate(animation);
        return SlideTransition(
          position: animation,
          child: child,
        );
      },
      pageBuilder: (BuildContext _context, animation, secondAnimation) {
        return child;
      }
  );

}