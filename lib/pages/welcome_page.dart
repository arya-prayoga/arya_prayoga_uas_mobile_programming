// ignore_for_file: prefer_const_constructors

import 'package:arya_prayoga_uas_mobile_programming/pages/login_page.dart';
import 'package:arya_prayoga_uas_mobile_programming/pages/main_page.dart';
import 'package:arya_prayoga_uas_mobile_programming/pages/register_page.dart';
import 'package:arya_prayoga_uas_mobile_programming/style.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/images/bg-login.png'),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Image.asset('assets/images/logo.png'),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: Size.fromHeight(50),
                side: BorderSide(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              child: Text(
                'Login',
                style: whiteTextStyle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size.fromHeight(50),
                side: BorderSide(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterPage();
                    },
                  ),
                );
              },
              child: Text(
                'Register',
                style: blackTextStyle,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MainPage();
                  },
                ),
              );
            },
            child: Text(
              'Continue as a guest',
              style: blueTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
