// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:arya_prayoga_uas_mobile_programming/models/product.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  DetailPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.network(product.thumbnail),
            Text(product.title),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: product.images.map((item) {
                  return Image.network(item);
                }).toList(),
              ),
            ),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
