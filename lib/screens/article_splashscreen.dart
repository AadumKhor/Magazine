import 'package:flutter/material.dart';
import 'package:magazine_app/article.dart';

class SplashScreen extends StatefulWidget {
  final int index;
  SplashScreen({Key key, this.index}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(list[widget.index].imgPath, fit: BoxFit.cover),
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
          list[widget.index].title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              letterSpacing: 3.0,
              fontWeight: FontWeight.w600),
        )),
        Positioned(
          right: 20.0,
          bottom: 20.0,
          child: Text(
            'Read Article',
            style: TextStyle(
                fontSize: 30.0,
                letterSpacing: 5.0,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        )
      ],
    ));
  }
}
