import 'package:flutter/material.dart';
import 'package:magazine_app/screens/article_splashscreen.dart';
import 'package:magazine_app/screens/mainscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazines',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: 'Playfair'
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: {
        '/splash' : (context)=> SplashScreen()
      },
    );
  }
}