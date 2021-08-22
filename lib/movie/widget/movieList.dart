import 'package:flutter/material.dart';
import 'movie.dart';

class MovieList extends StatefulWidget {
  final List<Movie> movieList;

  MovieList(this.movieList);

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.movieList.length,
      itemBuilder: (context, index) {
        var movie = this.widget.movieList[index];
        return Card(
            child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
                    title: Text(movie.title), subtitle: Text(movie.year))),
          ],
        ));
      },
    );
  }
}
