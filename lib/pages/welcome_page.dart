// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/bg-login.png'),
          Image.asset('assets/images/logo.png'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Login'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Register'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Continue as a guest'),
          ),
        ],
      ),
    );
  }
}
