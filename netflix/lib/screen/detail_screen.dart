import 'package:flutter/material.dart';
import 'package:netflix/model/movie.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;
  DetailScreen({required this.movie});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DeatailScreen();
  }
}

class _DeatailScreen extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Text("test"),
      ),
    );
  }
}
