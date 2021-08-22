import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  final Function(String) callback;

  TextInputWidget(this.callback); //constructor

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void click() {
    widget.callback(controller.text);
    FocusScope.of(context).unfocus();
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: TextStyle(fontSize: 20),
        controller: this.controller,
        decoration: InputDecoration(
            hintText: "Ex: Best Friend",
            hintStyle: TextStyle(color: Colors.blueGrey[100]),
            prefixIcon: Icon(Icons.add_outlined),
            labelText: "Name of the group",
            errorText: _validate
                ? "Group name should contain more than 2 characters"
                : null,
            suffixIcon: IconButton(
              icon: Icon(Icons.send),
              splashColor: Color(0xff247ba0),
              tooltip: "Create a group",
              onPressed: this.click,
            )));
  }
}
