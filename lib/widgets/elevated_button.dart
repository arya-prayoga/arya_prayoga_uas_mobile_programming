// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:arya_prayoga_uas_mobile_programming/pages/login_page.dart';
import 'package:arya_prayoga_uas_mobile_programming/pages/main_page.dart';
import 'package:arya_prayoga_uas_mobile_programming/pages/register_page.dart';
import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color color;
  bool? isPush;
  bool? isPushReplacement;
  bool? moveToLoginPage;
  bool? moveToRegisterPage;
  bool? moveToMainPage;

  MyElevatedButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.color,
    this.isPush,
    this.isPushReplacement,
    this.moveToLoginPage,
    this.moveToRegisterPage,
    this.moveToMainPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          minimumSize: Size.fromHeight(50),
          side: BorderSide(color: Colors.black),
        ),
        onPressed: () {
          if (isPush == true) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  if (moveToLoginPage == true) {
                    return LoginPage();
                  } else if (moveToRegisterPage == true) {
                    return RegisterPage();
                  } else if (moveToMainPage == true) {
                    return MainPage();
                  } else {
                    return LoginPage();
                  }
                },
              ),
            );
          } else if (isPushReplacement == true) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  if (moveToLoginPage == true) {
                    return LoginPage();
                  } else if (moveToRegisterPage == true) {
                    return RegisterPage();
                  } else if (moveToMainPage == true) {
                    return MainPage();
                  } else {
                    return LoginPage();
                  }
                },
              ),
            );
          }
        },
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
