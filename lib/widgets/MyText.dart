import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String text;
  Color color;
  FontWeight fontWeight;
  double size;

  MyText({
    this.text = '',
    this.color = Colors.black,
    this.fontWeight = FontWeight.bold,
    this.size = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
