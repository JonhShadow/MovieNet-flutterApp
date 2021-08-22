import 'package:flutter/material.dart';
import 'package:movie_net/TextInputWidget.dart';
import 'package:movie_net/group/widget/group.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_net/movie/widget/movie.dart';
import 'package:movie_net/movie/widget/movieList.dart';

class MovieListPage extends StatelessWidget {
  final Group group;
  MovieListPage(this.group);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(group.name,
                  style: GoogleFonts.montserrat(
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w400,
                      fontSize: 25))),
          backgroundColor: Color(0xff247ba0),
          shadowColor: Color(0xffe5e7e6),
        ),
        body: Page(group));
  }
}

class Page extends StatefulWidget {
  final Group group;

  Page(this.group);
  //has a user
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  List<Movie> movieList = [];
  String year = "2020";

  void newMovie(String title) {
    var movie = new Movie(title, year);
    this.setState(() {
      movieList.add(movie);
    });
  }

  @override
  Widget build(BuildContext context) {
    movieList = this.widget.group.movieList;
    if (movieList.isEmpty)
      return Scaffold(body: Center(child: Text("This group has no movies")));
    else
      return Scaffold(
          body: Column(children: <Widget>[
        Expanded(child: MovieList(movieList)),
        TextInputWidget(this.newMovie)
      ]));
  }
}
