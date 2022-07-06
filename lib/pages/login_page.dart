// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arya_prayoga_uas_mobile_programming/style.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/back_button.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/divider.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/elevated_button.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/sosial_media_button.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/text_button.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MyBackButton(),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              height: 15,
            ),
            MyTextField(text: 'Username'),
            MyTextField(text: 'Password', icon: Icons.visibility),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text('Forgot Password?', style: regularTextStyle),
            ),
            SizedBox(
              height: 15,
            ),
            MyElevatedButton(
              text: 'Login',
              textStyle: whiteTextStyle,
              color: Colors.black,
              isPushReplacement: true,
              moveToMainPage: true,
            ),
            SizedBox(
              height: 15,
            ),
            MyDivider(text: 'Or Login with'),
            SizedBox(
              height: 15,
            ),
            MySosialMediaButton(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  style: regularTextStyle,
                ),
                MyTextButton(
                  text: 'Register Now',
                  textStyle: linkTextStyle,
                  isPush: true,
                  moveToRegisterPage: true,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
