// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arya_prayoga_uas_mobile_programming/models/product.dart';
import 'package:arya_prayoga_uas_mobile_programming/providers/product_provider.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/back_button.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Laptop'),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 125,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 3,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Search Laptop",
                          suffixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.only(left: 25),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            FutureBuilder(
              future: productProvider.getRecommendedProduct(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  List<Product> data = snapshot.data;
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.9),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ProductCard(data[index]);
                    },
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
