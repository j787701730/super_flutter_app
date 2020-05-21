import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superflutterapp/utils/style.dart';

class ReadNotes extends StatefulWidget {
  @override
  _ReadNotesState createState() => _ReadNotesState();
}

class _ReadNotesState extends State<ReadNotes> {
  int _tabIndex = 0;
  String baseImgUrl = 'images/weread/';
  List books = [
    {
      'pic': 'ia_100000001.webp',
      'title': '余文杰发家史',
    },
    {
      'pic': 'ia_100000002.webp',
      'title': '余文杰情史',
    },
    {
      'pic': 'ia_100000003.webp',
      'title': '余文杰艳遇史',
    },
    {
      'pic': 'ia_100000004.webp',
      'title': '余文杰邂逅史',
    },
    {
      'pic': 'ia_100000005.webp',
      'title': '余文杰后宫三千',
    },
    {
      'pic': 'ia_100000006.webp',
      'title': '余文杰通史',
    },
    {
      'pic': 'ia_100000007.webp',
      'title': '余文杰创业史',
    },
    {
      'pic': 'ia_100000008.webp',
      'title': '余文杰守业史',
    },
    {
      'pic': 'ia_100000009.webp',
      'title': '余文杰继业史',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: CommonColor.title,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  _tabIndex = 0;
                });
              },
              child: Container(
                child: Text(
                  '笔记',
                  style: TextStyle(
                    color: _tabIndex == 0 ? Colors.blue : CommonColor.text,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _tabIndex = 1;
                });
              },
              child: Container(
                child: Text(
                  '读过',
                  style: TextStyle(
                    color: _tabIndex == 1 ? Colors.blue : CommonColor.text,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _tabIndex = 2;
                });
              },
              child: Container(
                child: Text(
                  '赞过',
                  style: TextStyle(
                    color: _tabIndex == 2 ? Colors.blue : CommonColor.text,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.transparent,
            ),
            onPressed: null,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: <Widget>[
          Offstage(
            offstage: false,
            child: Column(
              children: books.map<Widget>(
                (item) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: CommonColor.border,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('${item['title']}'),
                              Container(
                                height: 6,
                              ),
                              Text(
                                '5个笔记',
                                style: TextStyle(
                                  color: CommonColor.text2,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width * 0.1,
                          margin: EdgeInsets.only(right: 12),
                          child: Image.asset('$baseImgUrl${item['pic']}'),
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
            ),
          )
        ],
      ),
    );
  }
}
