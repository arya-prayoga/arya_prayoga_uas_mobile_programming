// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:arya_prayoga_uas_mobile_programming/models/product.dart';
import 'package:arya_prayoga_uas_mobile_programming/pages/detail_page.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(product),
            ),
          );
        },
        child: Row(
          children: [
            Image.network(
              product.thumbnail,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title),
                Text(product.brand),
                Text(product.rating.toString()),
                Text(product.price.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
