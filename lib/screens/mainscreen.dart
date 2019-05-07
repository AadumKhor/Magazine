import 'package:flutter/material.dart';
import 'package:magazine_app/article.dart';

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
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: _buildArticles,
              )
        ],
      ),
    );
  }

  Widget _buildArticles(BuildContext context , int index){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 200.0,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(20.0),
              border: Border.all(width: 2.0 , color: Colors.black)
            )
          )
        ],
      ),
    );
  }
}
