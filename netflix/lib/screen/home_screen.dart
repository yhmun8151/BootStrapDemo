import 'package:flutter/material.dart';
import 'package:netflix/model/movie.dart';
import 'package:netflix/widget/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false,
    }),
  ];
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
        )
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
