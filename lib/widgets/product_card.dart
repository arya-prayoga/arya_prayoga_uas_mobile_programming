// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:arya_prayoga_uas_mobile_programming/models/product.dart';
import 'package:arya_prayoga_uas_mobile_programming/pages/detail_page.dart';
import 'package:arya_prayoga_uas_mobile_programming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Container(
        padding: EdgeInsets.only(top: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 5),
          borderRadius: BorderRadius.circular(25),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(product),
              ),
            );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        product.thumbnail,
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      width: 75,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Text.rich(
                        TextSpan(
                          text: '- ${product.discountPercentage} %',
                          style: whiteTextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Text(
                      product.title,
                      style: regularTextStyle,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: RatingStars(
                        value: product.rating,
                        valueLabelVisibility: false,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '\$ ${product.price}',
                        style: regularTextStyle,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
