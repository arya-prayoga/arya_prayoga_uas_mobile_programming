// ignore_for_file: prefer_const_constructors

import 'package:arya_prayoga_uas_mobile_programming/style.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/elevated_button.dart';
import 'package:arya_prayoga_uas_mobile_programming/widgets/text_button.dart';
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
          MyElevatedButton(
            text: 'Login',
            textStyle: whiteTextStyle,
            color: Colors.black,
            isPush: true,
            moveToLoginPage: true,
          ),
          MyElevatedButton(
            text: 'Register',
            textStyle: blackTextStyle,
            color: Colors.white,
            isPush: true,
            moveToRegisterPage: true,
          ),
          MyTextButton(
            text: 'Continue as a guest',
            textStyle: blueTextStyle,
            isPushReplacement: true,
            moveToMainPage: true,
          )
        ],
      ),
    );
  }
}
