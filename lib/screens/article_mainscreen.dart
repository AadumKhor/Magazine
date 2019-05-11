import 'package:flutter/material.dart';

import '../article.dart';

class Content extends StatelessWidget {
  final int index;

  Content({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            ClipPath(
                clipper: LineCLipper(),
                child: Image.network(
                  list[index].imgPath,
                  height: 256.0,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 150.0 , left: 30.0 ,right: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        list[index].content,
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LineCLipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height - 60);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 50.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
