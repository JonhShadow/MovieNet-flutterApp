import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_net/group/widget/group.dart';
import 'package:movie_net/group/widget/groupList.dart';
import 'package:movie_net/group/addGroupPage.dart';
import 'package:movie_net/group/widget/bottomBar.dart';
import 'package:movie_net/movie/widget/movie.dart';

class GroupListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Page());
  }
}

class Page extends StatefulWidget {
  //has a user
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  List<Group> groupList = [];

  String admin = "João";

  void newGroup(String name) {
    var group = new Group(name, admin);
    Movie movie = new Movie("The Father", "2019");
    group.movieList.add(movie);
    print(group.movieList.length);
    this.setState(() {
      groupList.add(group);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (groupList.isEmpty)
      return Scaffold(
          extendBody: true,
          body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.green, Colors.blueAccent]),
              ),
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text('You do not have any group',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            letterSpacing: 0.7,
                            fontWeight: FontWeight.w400,
                            fontSize: 25)),
                    Text('Add one with the button below',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            letterSpacing: 0.7,
                            fontWeight: FontWeight.w400,
                            fontSize: 20))
                  ]))),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.white,
              tooltip: 'Creat Group',
              child: Icon(Icons.add, color: Colors.blueAccent, size: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddGroupPage(this.newGroup)),
                );
              }),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomBar());

    return Scaffold(
      extendBody: true,
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.green, Colors.blueAccent]),
          ),
          child: Column(children: <Widget>[
            Expanded(child: GroupList(this.groupList)),
          ])),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          tooltip: 'Creat Group',
          child: Icon(Icons.add, color: Colors.blueAccent, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddGroupPage(this.newGroup)),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
