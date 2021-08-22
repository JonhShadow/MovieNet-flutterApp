import 'package:flutter/material.dart';

class GroupSubmitButton extends StatelessWidget {
  final _formKey;
  final Function(String) callback;
  final groupName;

  GroupSubmitButton(this._formKey, this.callback, this.groupName);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 150),
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 3,
            alignment: Alignment.centerLeft,
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
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('A new Group was created!')));
                    callback(groupName);
                    Navigator.pop(context);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Create',
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
                ))));
  }
}
