import 'package:arya_prayoga_uas_mobile_programming/pages/welcome_page.dart';
import 'package:arya_prayoga_uas_mobile_programming/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        title: 'UAS Mobile Programming oleh Arya Prayoga 19.0504.0002',
        theme: ThemeData(
          primaryColor: Colors.green,
          primarySwatch: Colors.green,
        ),
        debugShowCheckedModeBanner: false,
        // ignore: prefer_const_constructors
        home: WelcomePage(),
      ),
    );
  }
}
