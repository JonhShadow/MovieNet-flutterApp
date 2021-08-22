import 'package:flutter/material.dart';

class ButtonGoogle extends StatefulWidget {
  @override
  _ButtonGoogleState createState() => _ButtonGoogleState();
}

class _ButtonGoogleState extends State<ButtonGoogle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      //width: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue[300],
            blurRadius: 10.0, // has the effect of softening the shadow
            spreadRadius: 1.0, // has the effect of extending the shadow
            offset: Offset(
              5.0, // horizontal, move right 10
              5.0, // vertical, move down 10
            ),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign in with',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 5)),
            Image(
                image: AssetImage('assets/images/google_logo.png'), height: 35),
          ],
        ),
      ),
    );
  }
}
