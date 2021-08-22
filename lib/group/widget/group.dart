import 'package:movie_net/movie/widget/movie.dart';

class Group {
  String name;
  String admin; // tem de ser o uid do user;
  List<Movie> movieList = [];
  Set useresInGroup = {};
  int id; // tem de ser o id da db;

  Group(this.name, this.admin) {
    useresInGroup.add(admin);
  }

  int countUser() {
    return useresInGroup.length;
  }
}
