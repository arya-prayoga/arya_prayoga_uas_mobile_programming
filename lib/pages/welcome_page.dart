// ignore_for_file: prefer_const_constructors

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
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(fontSize: 16, color: Colors.white),
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
              onPressed: () {},
              child: Text(
                'Register',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Continue as a guest',
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
