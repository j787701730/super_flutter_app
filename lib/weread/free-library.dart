import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';

class FreeLibrary extends StatefulWidget {
  @override
  _FreeLibraryState createState() => _FreeLibraryState();
}

class _FreeLibraryState extends State<FreeLibrary> {
  String baseImgUrl = 'images/weread/';
  List books = [
    {
      'pic': 'ia_100000001.webp',
      'title': '东风满太虚发家史',
    },
    {
      'pic': 'ia_100000002.webp',
      'title': '东风满太虚发家史',
    },
    {
      'pic': 'ia_100000003.webp',
      'title': '东风满太虚发家史',
    },
    {
      'pic': 'ia_100000004.webp',
      'title': '东风满太虚发家史',
    },
  ];

  List booksList = [
    {
      'pic': 'ia_100000008.webp',
      'title': '东风满太虚发家史',
    },
    {
      'pic': 'ia_100000002.webp',
      'title': '东风满太虚发家史',
    },
    {
      'pic': 'ia_100000013.webp',
      'title': '东风满太虚发家史',
    },
    {
      'pic': 'ia_100000004.webp',
      'title': '东风满太虚发家史',
    },
    {
      'pic': 'ia_100000005.webp',
      'title': '东风满太虚发家史',
    },
    {
      'pic': 'ia_100000011.webp',
      'title': '东风满太虚发家史',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F6F8),
        brightness: Brightness.light,
        elevation: 0,
        iconTheme: IconThemeData(
          color: CommonColor.title,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: <Widget>[
          Container(
            child: Text(
              '免费图书馆',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            child: Text(
              '朋友们点击你分享的链接或图片后即可获得对应书籍',
              style: TextStyle(
                color: CommonColor.text2,
              ),
            ),
            margin: EdgeInsets.only(bottom: 12),
          ),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: books.map<Widget>(
              (item) {
                double itemWidth = (width - 24 - 12) / 2;
                return Container(
                  width: itemWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: itemWidth - 24,
                        child: Image.asset('$baseImgUrl${item['pic']}'),
                        margin: EdgeInsets.only(bottom: 12),
                      ),
                      FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text('分享'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {},
              child: Text('换一批'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 8),
            ),
          ),
          Column(
            children: [1, 2, 2, 3].map<Widget>(
              (item) {
                double itemWidth = width / 2 - 24 - 6;
                return Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(bottom: 12),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xffE5666D), Color(0xffED764B)],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: itemWidth,
                            height: (itemWidth / 2 - 6) * 360 / 250,
                            child: Center(
                              child: Text(
                                '$item',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: itemWidth / 2 - 6,
                            child: Image.asset('$baseImgUrl${booksList[0]['pic']}'),
                          ),
                          Container(
                            width: itemWidth / 2 - 6,
                            child: Image.asset('$baseImgUrl${booksList[1]['pic']}'),
                          ),
                        ],
                      ),
                      Container(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [2, 3, 4, 5].map<Widget>(
                          (item) {
                            return Container(
                              width: itemWidth / 2 - 6,
                              child: Image.asset('$baseImgUrl${booksList[item]['pic']}'),
                            );
                          },
                        ).toList(),
                      )
                    ],
                  ),
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}
