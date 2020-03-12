import 'package:flutter/material.dart';

class EnterAnimation {

  AnimationController enterAnimationController;
  Animation<double> circleSize;

  EnterAnimation(this.enterAnimationController){
    circleSize = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: enterAnimationController, curve: Curves.easeInOutBack)
    );
  }

}