// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:arya_prayoga_uas_mobile_programming/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  DetailPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(product.title),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Stack(
              children: [
                Image.network(
                  product.thumbnail,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              product.thumbnail,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(product.title),
                              RatingStars(
                                value: product.rating,
                                valueLabelVisibility: true,
                                valueLabelColor: Colors.green,
                              ),
                              Container(
                                width: 175,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text('Price'),
                                        Text.rich(
                                          TextSpan(text: '\$ ${product.price}'),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('Stock'),
                                        Text.rich(
                                          TextSpan(text: '${product.stock}'),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('Discount'),
                                        Text.rich(
                                          TextSpan(
                                              text:
                                                  '${product.discountPercentage} %'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Discription'),
                    SizedBox(
                      height: 16,
                    ),
                    Text(product.description),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Images'),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: product.images.map(
                          (item) {
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Image.network(item),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 32),
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 100,
            //         width: 100,
            //         child: ClipRRect(
            //           borderRadius: BorderRadius.circular(20),
            //           child: Image.network(
            //             product.thumbnail,
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Text.rich(
            //               TextSpan(text: '\$ ${product.price}'),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 32),
            //   child: Container(
            //     color: Colors.white,
            //     width: double.infinity,
            //     height: 100,
            //   ),
            // ),
            // Text(product.title),
            // Container(
            //   height: 100,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: product.images.map((item) {
            //       return Image.network(item);
            //     }).toList(),
            //   ),
            // ),
            // Text(product.description),
          ],
        ),
      ),
    );
  }
}
