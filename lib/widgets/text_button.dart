// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:arya_prayoga_uas_mobile_programming/pages/login_page.dart';
import 'package:arya_prayoga_uas_mobile_programming/pages/main_page.dart';
import 'package:arya_prayoga_uas_mobile_programming/pages/register_page.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  bool? isPush;
  bool? isPushReplacement;
  bool? moveToLoginPage;
  bool? moveToRegisterPage;
  bool? moveToMainPage;

  MyTextButton({
    Key? key,
    required this.text,
    required this.textStyle,
    this.isPush,
    this.isPushReplacement,
    this.moveToLoginPage,
    this.moveToMainPage,
    this.moveToRegisterPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
    );
  }
}
