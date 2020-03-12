import 'package:authify/pages/home/animation_home_page.dart';
import 'package:authify/resources/widget/avatar.dart';
import 'package:authify/resources/widget/button.dart';
import 'package:authify/resources/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:authify/resources/style.dart' as myStyle;
import 'package:authify/resources/animation/fade_page_route.dart';

class LoginPage extends StatelessWidget {

  AnimationController _animationController;

  LoginPage({animationController}){
    _animationController = animationController;
  }

  double _deviceWidth;
  double _deviceHeight;

  FocusScopeNode currentFocus;

  TextEditingController _usernameTextEditController = TextEditingController();
  TextEditingController _passwordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    void loginPressed() async {
      await _animationController.reverse();
      Navigator.pushReplacement(
          context, FadePageRoute(
            child: AnimationHomePage(_usernameTextEditController.text)
        )
      );
    }

    void onCloseKeyboard() {
      currentFocus = FocusScope.of(context);
      if(!currentFocus.hasPrimaryFocus){
        currentFocus.unfocus();
      }
    }

    return GestureDetector(
      onTap: onCloseKeyboard,
      child: Scaffold(
        backgroundColor: myStyle.primaryColor,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AvatarWidget(
                  animationController: this._animationController,
                  deviceHeight: _deviceHeight
              ),
              TextFieldWidget(
                deviceWidth: _deviceWidth,
                textEditingController: _usernameTextEditController,
                hintText: 'Username / Email',
              ),
              TextFieldWidget(
                deviceWidth: _deviceHeight,
                textEditingController: _passwordTextEditController,
                hintText: 'Password',
              ),
              ButtonWidget(
                deviceWidth: _deviceWidth,
                title: "LOG IN",
                onTap: loginPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}



