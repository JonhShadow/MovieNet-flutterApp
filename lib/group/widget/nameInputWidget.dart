import 'package:flutter/material.dart';

class NameInputWidget extends StatefulWidget {
  final Function(String) callback;
  NameInputWidget(this.callback);

  @override
  NameInputWidgetState createState() {
    return NameInputWidgetState();
  }
}

class NameInputWidgetState extends State<NameInputWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 50),
        child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 0.5,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 0, bottom: -5),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: InputBorder.none,
                hintText: "Ex. I love you 4000!",
                hintStyle: TextStyle(
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white54),
                fillColor: Colors.lightBlueAccent,
                labelText: 'Group Name',
                labelStyle: TextStyle(
                  fontSize: 20,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'You neet to set a name';
                }
                return null;
              },
            )));
  }
}
