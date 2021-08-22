import 'package:flutter/material.dart';
import 'package:movie_net/login/widget/doubleButton.dart';

import 'package:movie_net/login/widget/first.dart';
import 'package:movie_net/login/widget/inputEmail.dart';
import 'package:movie_net/login/widget/password.dart';
import 'package:movie_net/login/widget/textLogin.dart';
import 'package:movie_net/login/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.green, Colors.blueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                DoubleButton(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
