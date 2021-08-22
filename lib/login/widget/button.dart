import 'package:flutter/material.dart';
import 'package:movie_net/group/groupListPage.dart';

class ButtonLogin extends StatefulWidget {
  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  void click() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GroupListPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
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
        onPressed: () => click(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'OK',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
