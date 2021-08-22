import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddGroupPage extends StatelessWidget {
  final Function(String) callback;
  AddGroupPage(this.callback);

  final textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blueAccent),
            title: Text("Create Group",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    color: Colors.blueAccent,
                    letterSpacing: 0.7,
                    fontWeight: FontWeight.w400,
                    fontSize: 20)),
            backgroundColor: Colors.white),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.purpleAccent.shade100, Colors.blueAccent]),
            ),
            child: Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 50, left: 50, right: 50, bottom: 50),
                      child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: textController,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 0.5,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 0, bottom: -5),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              border: InputBorder.none,
                              hintText: "Ex. I love you 4000!",
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white54),
                              fillColor: Colors.lightBlueAccent,
                              labelText: 'Group Name',
                              labelStyle: TextStyle(
                                fontSize: 25,
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
                          ))),
                  Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 3,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue[300],
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
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
                                      SnackBar(
                                          content: Text(
                                              'A new Group was created!')));
                                  callback(textController.text);
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
                              ))))
                ]))));
  }
}
