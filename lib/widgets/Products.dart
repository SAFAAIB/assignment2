import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyText.dart';

class Products extends StatelessWidget {
  String imageUrl;
  String productName;
  double price;


  Products({this.imageUrl, this.productName, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 110,
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 100,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2),
                        BlendMode.darken),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.only(top: 3),
                  alignment: Alignment.center,
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset.zero,
                        blurRadius: 6,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Column(children: [
                    MyText(
                      text: productName,
                      size: 10,
                    ),
                    MyText(
                      text: 'price : $price\$',
                      size: 12,
                    ),
                  ]),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}