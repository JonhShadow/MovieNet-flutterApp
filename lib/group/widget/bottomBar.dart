import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: Colors.blueAccent, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: BottomAppBar(
            notchMargin: 10,
            shape: CircularNotchedRectangle(),
            //color: Colors.blueAccent,
            color: Colors.white,
            child: IconTheme(
              data:
                  //IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
                  IconThemeData(color: Colors.blueAccent),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.menu), onPressed: () {}, iconSize: 30),
                  Spacer(),
                  Container(
                    height: 65.0,
                    width: 1.0,
                  ),
                  IconButton(
                      icon: Icon(Icons.search), onPressed: () {}, iconSize: 30),
                  IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                      iconSize: 30),
                ],
              ),
            )));
  }
}
