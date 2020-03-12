import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {

  double deviceWidth;
  TextEditingController textEditingController = TextEditingController();
  String hintText;
  TextFieldWidget({this.deviceWidth, this.textEditingController, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 30, right: 30),
      width: deviceWidth,
      child: TextFormField(
        cursorColor: Colors.white,
        controller: textEditingController,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          )
        ),
      ),
    );
  }
}
