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
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'MAGAZINE',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 40.0, right: 40.0),
            child: Divider(
              height: 10.0,
              color: Colors.black,
              indent: 5.0,
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: _buildArticles,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildArticles(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 200.0,
        // decoration: BoxDecoration(border: Border.all()),
        child: Row(
          children: <Widget>[
            Container(
                alignment: index % 2 == 0
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                height: 180.0,
                width: 180.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black))),
            SizedBox(
              width: 30.0,
            ),
            _buildRightContent(index)
          ],
        ),
      ),
    );
  }

  // ! the content that cotnains the date of the article and
  // ! the name and read article option
  Widget _buildRightContent(int index) {
    return Column(
      children: <Widget>[
        _buildDateAndLine(),
        SizedBox(
          height: 10.0,
        ),
        _buildTitleAdnRead(index)
      ],
    );
  }

  //! contains the title name and read article subtitle
  Widget _buildTitleAdnRead(int index) {
    return Column(
      children: <Widget>[
        Text(
          list[index].title,
          style: TextStyle(
              color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10.0,),
        Text('Read Article' , style: TextStyle(fontSize: 20.0 , color: Colors.grey),)
      ],
    );
  }

  //! contains the line and the date
  Widget _buildDateAndLine() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 50.0,
        child: Row(
          children: <Widget>[
            Container(
              height: 50.0,
              width: 4.0,
              color: Colors.blue[900],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                '- May 5TH 2019',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
            )
          ],
        ),
      ),
    );
  }
}
