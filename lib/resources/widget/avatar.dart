import 'package:authify/resources/animation/login_page_animation.dart';
import 'package:flutter/material.dart';
import 'package:authify/resources/style.dart' as myStyle;

class AvatarWidget extends StatelessWidget {
  double deviceHeight;
  AnimationController animationController;

  AvatarWidget({animationController, this.deviceHeight}){
    if(animationController != null){
      this.animationController = animationController;
      _enterAnimation = EnterAnimation(this.animationController);
      this.animationController.forward();
    }
  }

  EnterAnimation _enterAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _enterAnimation.enterAnimationController,
      builder: (BuildContext _context, Widget _widget){
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.diagonal3Values(_enterAnimation.circleSize.value, _enterAnimation.circleSize.value, 1),
          child: Container(
            height: deviceHeight * 0.25,
            width: deviceHeight * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                color: myStyle.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/image/pic.png')
                )
            ),
          ),
        );
      },
    );
  }
}

