import 'package:flutter/material.dart';
import 'package:magazine_app/screens/mainscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazines',
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}