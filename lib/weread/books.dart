import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/weread/book_content.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  String baseImgUrl = 'images/weread/';
  List books = [
    {
      'pic': 'ia_100000001.webp',
      'title': '东风满太虚发家史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000002.webp',
      'title': '东风满太虚情史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000003.webp',
      'title': '东风满太虚艳遇史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000004.webp',
      'title': '东风满太虚邂逅史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000005.webp',
      'title': '东风满太虚后宫三千',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000006.webp',
      'title': '东风满太虚通史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000007.webp',
      'title': '东风满太虚创业史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000008.webp',
      'title': '东风满太虚守业史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000009.webp',
      'title': '东风满太虚继业史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                '编辑',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text(
              '书架',
              style: TextStyle(
                color: Color(0xff333333),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                '书城',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.618,
          ),
          itemBuilder: (BuildContext context, int position) {
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookContent(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Image.asset('$baseImgUrl${books[position]['pic']}'),
                    ),
                    Text(
                      '${books[position]['title']}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: books.length,
        ),
      ),
    );
  }
}
