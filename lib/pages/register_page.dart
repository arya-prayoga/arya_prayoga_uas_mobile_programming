// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arya_prayoga_uas_mobile_programming/style.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/back_button.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/divider.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/elevated_button.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/sosial_media_button.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/text_button.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
            MyTextField(text: 'Email'),
            MyTextField(text: 'Password'),
            MyTextField(text: 'Confirm Password'),
            SizedBox(
              height: 15,
            ),
            MyElevatedButton(
              text: 'Register',
              textStyle: whiteTextStyle,
              color: Colors.black,
              isPushReplacement: true,
              moveToMainPage: true,
            ),
            SizedBox(
              height: 15,
            ),
            MyDivider(text: 'Or Register with'),
            MySosialMediaButton(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account?",
                  style: regularTextStyle,
                ),
                MyTextButton(
                  text: 'Login Now',
                  textStyle: linkTextStyle,
                  isPush: true,
                  moveToLoginPage: true,
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
