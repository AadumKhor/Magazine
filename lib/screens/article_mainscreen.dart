import 'package:flutter/material.dart';

import '../article.dart';

class Content extends StatelessWidget {

  final int index;

  Content({this.index});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ImageClipper(child: Image.network(list[index].imgPath))
        ],
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    return null;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}