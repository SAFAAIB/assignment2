import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ImageContainer.dart';
import 'MyText.dart';

class ListOfProdicts extends StatelessWidget{
  String imageUrl;
  String description;
  String name;
  double price;


  ListOfProdicts({this.imageUrl, this.description, this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 15,bottom: 10),
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      elevation: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageContainer(
            imageUrl: imageUrl,
            width: 80,
            height: 80,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: name,
              ),
              MyText(
                text: description,
                fontWeight: FontWeight.normal,
                size: 16,
                color: Colors.grey,
              ),
            ],
          ),
          MyText(
            text: ' $price\$',
          ),


        ],
      ),
    );
  }

}