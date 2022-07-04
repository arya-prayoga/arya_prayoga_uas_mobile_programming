import 'dart:convert';
import 'package:arya_prayoga_uas_mobile_programming/models/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier {
  getRecommendedProduct() async {
    var result = await http
        .get(Uri.parse('https://dummyjson.com/products?skip=5&limit=5'));
    // print(result.statusCode);
    // print(result.body);
    if (result.statusCode == 200) {
      List data = jsonDecode(result.body)['products'];

      List<Product> products =
          data.map((item) => Product.fromJson(item)).toList();
      return products;
    } else {
      return <Product>[];
    }
  }
}
