import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';

class Idea extends StatefulWidget {
  @override
  _IdeaState createState() => _IdeaState();
}

class _IdeaState extends State<Idea> {
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
      'title': '东风满太虚发家史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000003.webp',
      'title': '东风满太虚发家史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000004.webp',
      'title': '东风满太虚发家史',
      'author': '东风满太虚',
      'read_avatar': 'ia_100000000.webp',
    },
  ];

  List lists = [
    {
      'pic': 'avatar.webp',
      'title': '东风满太虚发家史',
      'author': '东风满太虚',
      'type': '近期热门',
    },
    {
      'pic': 'avatar2.webp',
      'title': '东风满太虚发家史',
      'author': '东风满太虚',
      'type': '已关注',
    },
    {
      'pic': 'avatar3.webp',
      'title': '东风满太虚发家史',
      'author': '东风满太虚',
      'type': '近期热门',
    },
    {
      'pic': 'avatar.webp',
      'title': '东风满太虚发家史',
      'author': '东风满太虚',
      'type': '已关注',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: CommonColor.title,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    bottom: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '继续阅读',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '余XX ([太阳]喜欢) 发表了点评',
                            style: TextStyle(
                              color: Color(0xff666666),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xff666666),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Wrap(
                  spacing: 12,
                  children: books.map<Widget>(
                    (item) {
                      return Container(
                        width: (width - 24 - 12 * 3) / 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Image.asset('$baseImgUrl${item['pic']}'),
                            ),
                            Container(
                              height: 50,
                              child: Text(
                                '${item['title']}',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                ),
                Container(
                  width: width - 24,
                  child: ClipRRect(
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      color: Color(0xffF7F7F8),
                      onPressed: () {},
                      child: Text('换一批'),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 6,
            color: Color(0xffECEDEF),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff4186E7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  30,
                                ),
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                Text(
                                  ' 10+',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            ' 朋友赞过',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff4186E7),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 6,
                        ),
                        child: Text(
                          '来来来，你什么都不用会，真正的从零蛋开始系统又轻松地学习',
                          style: TextStyle(
                            color: Color(0xff999999),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: 12,
                      ),
                      width: 90,
                      height: 44,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    40,
                                  ),
                                ),
                              ),
                              child: FLAvatar(
                                width: 40,
                                height: 40,
                                image: Image.asset('${baseImgUrl}avatar2.webp'),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    40,
                                  ),
                                ),
                              ),
                              child: FLAvatar(
                                width: 40,
                                height: 40,
                                image: Image.asset('${baseImgUrl}avatar2.webp'),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    40,
                                  ),
                                ),
                              ),
                              child: ClipOval(
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                    '${baseImgUrl}avatar3.webp',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: lists.map<Widget>(
              (item) {
                return Column(
                  children: <Widget>[
                    Container(
                      height: 6,
                      color: Color(0xffECEDEF),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  '${item['title'] * 6}',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                width: width * 0.15,
                                height: width * 0.15,
                                child: Image.asset('$baseImgUrl${item['pic']}'),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '${item['author']}',
                                      style: TextStyle(
                                        color: Color(0xff999999),
                                      ),
                                    ),
                                    Container(
                                      width: 12,
                                    ),
                                    Text(
                                      '#${item['type']}',
                                      style: TextStyle(
                                        color: Color(0xff999999),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: <Widget>[
                                    Icon(
                                      Icons.favorite_border,
                                      color: Color(0xff999999),
                                    ),
                                    Text(
                                      '7',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff999999),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}
