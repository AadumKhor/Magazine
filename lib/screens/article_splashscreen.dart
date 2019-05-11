import 'package:flutter/material.dart';
import 'package:magazine_app/article.dart';

class SplashScreen extends StatelessWidget{
  final int index;
  // final String title;
  // final String article;

  SplashScreen({this.index , Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(list[index].imgPath, fit: BoxFit.cover),
        Positioned(
          top: 20.0,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () => Navigator.pop,
          ),
        ),
        Center(
            child: Text(
          list[index].title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              letterSpacing: 3.0,
              fontWeight: FontWeight.w600),
        )),
        Positioned(
          right: 20.0,
          bottom: 20.0,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/article');
            },
            child: Text(
              'Read Article',
              style: TextStyle(
                  fontSize: 30.0,
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        )
      ],
    ));
  }
}
