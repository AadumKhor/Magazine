import 'package:flutter/material.dart';
import 'package:magazine_app/article.dart';

class SplashScreen extends StatefulWidget {
  final int index;

  SplashScreen({Key key , this.index}) : super(key:key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(list[widget.index].imgPath , fit : BoxFit.cover)
      ],
    );
  }
}