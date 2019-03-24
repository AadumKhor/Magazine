import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30.0,
                  ),
                  color: Colors.black,
                  onPressed: () {},
                ),
                SizedBox(width: MediaQuery.of(context).size.width - 116),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text(
                  'MAGAZINE',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 40.0 , right: 40.0),
                child: Divider(height: 10.0, color: Colors.black,indent: 5.0,),
              )
        ],
      ),
    );
  }
}
