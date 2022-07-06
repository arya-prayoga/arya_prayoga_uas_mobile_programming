// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          // side: BorderSide(color: Colors.black),
          fixedSize: Size(50, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: Colors.grey),
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset('assets/images/back_arrow.png'),
      ),
    );
  }
}
