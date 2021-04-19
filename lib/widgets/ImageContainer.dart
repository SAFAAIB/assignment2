import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyText.dart';

class ImageContainer extends StatelessWidget {
  String imageUrl;
  Alignment alignment;
  double width;
  double height;
  String text1;
  String text2;
  double size1;
  double size2;


  ImageContainer(
      {this.imageUrl,
        this.alignment = Alignment.topLeft,
        this.width = 300,
        this.height = 200,
        this.text1 = '',
        this.text2 = '',
        this.size1 = 25,
        this.size2 = 18});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 30 ),
      alignment: alignment,
      margin: EdgeInsets.only(top: 15 ,  right: 15 , bottom: 15),
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: text1 ,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            size: size1,

          ),

          SizedBox(height: 10,),
          MyText(
            text: text2,
            color: Colors.white,
            size: size2,
            fontWeight: FontWeight.normal,

          ),

        ],
      ),
    );
  }
}
