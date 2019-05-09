import 'package:flutter/material.dart';
import 'package:magazine_app/article.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(list[0].imgPath)
        ],
      ),
    );
  }
}