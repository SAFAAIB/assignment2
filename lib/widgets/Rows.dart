import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyText.dart';

class Rows extends StatelessWidget{
  String text;
  String flatButton;

  Rows({this.text, this.flatButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: text,
        ),
        FlatButton(
          onPressed: () {},
          child: MyText(
            text: flatButton,
            color: Colors.blueAccent,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );


  }

}