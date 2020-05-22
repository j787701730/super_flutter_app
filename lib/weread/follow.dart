import 'package:flui/flui.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';

class Follow extends StatefulWidget {
  @override
  _FollowState createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  int _tabIndex = 1;
  String baseImgUrl = 'images/weread/';
  List list = [
    {
      'name': '过雨',
      'time': [0, 12],
      'avatar': 'avatar.webp'
    },
    {
      'name': '过雨',
      'time': [0, 22],
      'avatar': 'avatar2.webp'
    },
    {
      'name': '过雨',
      'time': [0, 14],
      'avatar': 'avatar3.webp'
    },
    {
      'name': '过雨',
      'time': [0, 12],
      'avatar': 'avatar.webp'
    },
    {
      'name': '过雨',
      'time': [0, 12],
      'avatar': 'avatar2.webp'
    },
    {
      'name': '过雨',
      'time': [0, 23],
      'avatar': 'avatar3.webp'
    },
    {
      'name': '过雨',
      'time': [0, 12],
      'avatar': 'avatar.webp'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
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
                  '我关注的',
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
                  '关注我的',
                  style: TextStyle(
                    color: _tabIndex == 1 ? Colors.blue : CommonColor.text,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text('管理'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Offstage(
            offstage: false,
            child: Column(
              children: <Widget>[
                Container(
                  height: 64,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          FLAvatar(
                            width: 30,
                            height: 30,
                            image: Image.asset('${baseImgUrl}b4_.webp'),
                          ),
                          Container(
                            width: 12,
                          ),
                          Text('微信朋友'),
                        ],
                      ),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
                Container(
                  height: 64,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          FLAvatar(
                            width: 30,
                            height: 30,
                            image: Image.asset('${baseImgUrl}b49.webp'),
                          ),
                          Container(
                            width: 12,
                          ),
                          Text('读书小队'),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('29分'),
                              Text(
                                '还差32分即可获取奖励',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: CommonColor.text2,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 12,
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: Text('${list.length} 人关注我'),
                ),
                Column(
                  children: list.map<Widget>(
                    (item) {
                      return Container(
                        height: 64,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                FLAvatar(
                                  width: 30,
                                  height: 30,
                                  image: Image.asset('$baseImgUrl${item['avatar']}'),
                                ),
                                Container(
                                  width: 12,
                                ),
                                Text('${item['name']}'),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffF0F3F9),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    size: 18,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    '关注',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ).toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
