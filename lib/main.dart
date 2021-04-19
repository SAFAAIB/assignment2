import 'package:ass2_app/widgets/ImageContainer.dart';
import 'package:ass2_app/widgets/ListOfProducts.dart';
import 'package:ass2_app/widgets/MyText.dart';
import 'package:ass2_app/widgets/Products.dart';
import 'package:ass2_app/widgets/Rows.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<ImageContainer> slider = [
    ImageContainer(
      imageUrl: 'images/photo1.jpg',
      text1: 'ice cream',
      text2: 'simply dummy text \n of the printing',
    ),
    ImageContainer(
      imageUrl: 'images/photo3.jpg',
      text1: 'Ice Caffe',
      text2: 'simply dummy text \n of the printing',
    ),
    ImageContainer(
      imageUrl: 'images/photo5.jpg',
      text1: 'Milk shik',
      text2: 'simply dummy text \n of the printing',
    ),
  ];
  List<ImageContainer> categries = [
    ImageContainer(
      imageUrl: 'images/photo4.jpg',
      text1: 'ice cream',
      width: 100,
      height: 80,
      size1: 15,
      alignment: Alignment.center,
    ),
    ImageContainer(
      imageUrl: 'images/photo6.jpg',
      text1: 'Shopping',
      width: 100,
      height: 80,
      size1: 15,
    ),
    ImageContainer(
      imageUrl: 'images/photo3.jpg',
      text1: 'Milk shik',
      width: 100,
      height: 80,
      size1: 15,
    ),
    ImageContainer(
      imageUrl: 'images/photo2.jpg',
      text1: 'Ice caffe',
      width: 100,
      height: 80,
      size1: 15,
    ),
    ImageContainer(
      imageUrl: 'images/photo1.jpg',
      text1: 'Crema',
      width: 100,
      height: 80,
      size1: 15,
    ),
  ];

  List<Products> products = [
    Products(
      imageUrl: 'images/photo6.jpg',
      productName: 'ice',
      price: 20,
    ),
    Products(
      imageUrl: 'images/photo4.jpg',
      productName: 'tea',
      price: 9,
    ),
    Products(
      imageUrl: 'images/photo2.jpg',
      productName: 'milk',
      price: 5,
    ),
    Products(
      imageUrl: 'images/photo3.jpg',
      productName: 'caffe',
      price: 10,
    ),
    Products(
      imageUrl: 'images/photo1.jpg',
      productName: 'ice',
      price: 15,
    ),
  ];

  List<ListOfProdicts> loproducts = [
    ListOfProdicts(
      imageUrl: 'images/photo5.jpg',
      name: 'ice caffe',
      price: 9,
      description: 'simply dummy text of the \n printing dummy text ',
    ),
    ListOfProdicts(
      imageUrl: 'images/photo1.jpg',
      name: 'ice tea',
      price: 15,
      description: 'simply dummy text of the \n printing dummy text ',
    ),
    ListOfProdicts(
      imageUrl: 'images/photo2.jpg',
      name: 'ice cream',
      price: 6,
      description: 'simply dummy text of the \n printing dummy text ',
    ),
    ListOfProdicts(
      imageUrl: 'images/photo3.jpg',
      name: 'Milk',
      price: 4,
      description: 'simply dummy text of the \n printing dummy text ',
    ),
    ListOfProdicts(
      imageUrl: 'images/photo4.jpg',
      name: 'creama',
      price: 14,
      description: 'simply dummy text of the \n printing dummy text ',
    ),
    ListOfProdicts(
      imageUrl: 'images/photo6.jpg',
      name: 'ice caffe',
      price: 8,
      description: 'simply dummy text of the \n printing dummy text ',
    ),
    ListOfProdicts(
      imageUrl: 'images/photo5.jpg',
      name: 'pan cake',
      price: 17,
      description: 'simply dummy text of the \n printing dummy text ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: slider.map((e) {
                    return ImageContainer(
                      imageUrl: e.imageUrl,
                      text1: e.text1,
                      text2: e.text2,
                    );
                  }).toList(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 2),
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 2),
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: 'Categories',
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: categries.map((e) {
                          return ImageContainer(
                            imageUrl: e.imageUrl,
                            text1: e.text1,
                            width: e.width,
                            height: e.height,
                            size1: e.size1,
                          );
                        }).toList(),
                      ),
                    ),
                    Rows(
                      text: 'Top Selling',
                      flatButton: 'See more',
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: products.map((e) {
                          return Products(
                            imageUrl: e.imageUrl,
                            productName: e.productName,
                            price: e.price,
                          );
                        }).toList(),
                      ),
                    ),
                    Rows(
                      text: 'Recent Added',
                      flatButton: 'See more',
                    ),
                    Column(
                      children: loproducts.map((e) {
                        return ListOfProdicts(
                          imageUrl: e.imageUrl,
                          price: e.price,
                          name: e.name,
                          description: e.description,
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
