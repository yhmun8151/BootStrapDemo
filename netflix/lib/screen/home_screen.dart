import 'package:flutter/material.dart';
import 'package:netflix/model/movie.dart';
import 'package:netflix/widget/box_slider.dart';
import 'package:netflix/widget/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late Stream<QuerySnapshot> streamData;
  late List<Movie> movies = [];
  @override
  void initState() {
    super.initState();
    streamData = firestore.collection('movie').snapshots();
    firestore.collection('movie').get().then((event) => {
          for (var doc in event.docs)
            {
              movies.add(Movie.fromMap({
                'title': doc["title"],
                'keyword': doc["keyword"],
                'poster': doc["poster"],
                'like': doc["like"],
              })),
            },
          setState(() {}),
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Stack(
          children: [
            CarouselImages(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          'images/bbongflix_logo.png',
          fit: BoxFit.contain,
          height: 25,
        ),
        Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
            'TV 프로그램',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
            '영화',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
            '내가 찜한 콘텐츠',
            style: TextStyle(fontSize: 14),
          ),
        )
      ]),
    );
  }
}
