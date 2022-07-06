// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String text;
  IconData? icon;

  MyTextField({Key? key, required this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: text,
          suffixIcon: Icon(icon),
        ),
      ),
    );
  }
}
