import 'package:flutter/material.dart';
import 'package:movie_net/login/widget/button.dart';
import 'package:movie_net/login/widget/buttonGoogle.dart';

class DoubleButton extends StatefulWidget {
  @override
  _DoubleButtonState createState() => _DoubleButtonState();
}

class _DoubleButtonState extends State<DoubleButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, bottom: 40),
        child: Container(
            alignment: Alignment.topRight,
            //color: Colors.red,
            //height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonGoogle(),
                  ButtonLogin(),
                ])));
  }
}
