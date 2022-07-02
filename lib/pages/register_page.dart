// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arya_prayoga_uas_mobile_programming/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/images/back_arrow.png'),
            ),
            Image.asset('assets/images/logo.png'),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Username',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Confirm Password',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Register'),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Text('Or Register with'),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/facebook_logo.png'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/google_logo.png'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/apple_logo.png'),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Text('Already have an account?'),
                TextButton(
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
                  child: Text('Login Now'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
