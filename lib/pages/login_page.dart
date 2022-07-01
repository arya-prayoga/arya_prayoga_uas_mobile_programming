// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            Text('Forgot Password?'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Text('Or Login with'),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/facebook_logo.png'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/google_logo.png'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/apple_logo.png'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text('Register Now'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
