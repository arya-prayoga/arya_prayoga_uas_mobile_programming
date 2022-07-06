// ignore_for_file: prefer_const_constructors

import 'package:arya_prayoga_uas_mobile_programming/style.dart';
import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final String text;

  const MyDivider({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Divider(
              color: Colors.black,
              thickness: 1,
            ),
          ),
        ),
        Text(
          text,
          style: regularTextStyle,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Divider(
              color: Colors.black,
              thickness: 1,
            ),
          ),
        ),
      ],
    );
  }
}
