import 'package:flutter/material.dart';
import 'package:movie_net/movie/movieListPage.dart';
import 'group.dart';

class GroupList extends StatefulWidget {
  final List<Group> groupList;

  GroupList(this.groupList);

  @override
  _GroupListState createState() => _GroupListState();
}

class _GroupListState extends State<GroupList> {
  Group group;
  void goToGroup(Group group) {
    this.group = group;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MovieListPage(this.group)));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.groupList.length,
      itemBuilder: (context, index) {
        var group = this.widget.groupList[index];
        return Card(
            child: new InkWell(
                onTap: () => goToGroup(group),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ListTile(
                            title: Text(group.name),
                            subtitle: Text(group.admin))),
                    Row(children: <Widget>[
                      Container(
                          child: Text(group.countUser().toString(),
                              style: TextStyle(fontSize: 20))),
                      Icon(Icons.person, color: Color(0xff247ba0))
                    ])
                  ],
                )));
      },
    );
  }
}
