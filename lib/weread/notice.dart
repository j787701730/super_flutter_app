import 'package:flui/flui.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';

class Notice extends StatefulWidget {
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  String baseImgUrl = 'images/weread/';
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black87,
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
                  '通知',
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
                  '私信',
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
        padding: EdgeInsets.all(12),
        children: _tabIndex == 1
            ? [1, 2].map<Widget>(
                (item) {
                  return Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FLAvatar(
                          width: 50,
                          height: 50,
                          image: Image.asset('${baseImgUrl}avatar2.webp'),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 12,
                            ),
                            padding: EdgeInsets.only(
                              bottom: 12,
                              top: 12,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text('简单不快乐'),
                                          ),
                                          Container(
                                            child: Text(
                                              '5/12 10:24',
                                              style: TextStyle(
                                                color: CommonColor.text2,
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        '简单不快乐在看《三国演义》',
                                        style: TextStyle(
                                          color: CommonColor.text2,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: CommonColor.border,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ).toList()
            : [1, 1, 1, 1, 1, 1, 1, 1].map<Widget>(
                (item) {
                  return Container(
                    padding: EdgeInsets.only(top: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FLAvatar(
                          width: 40,
                          height: 40,
                          image: Image.asset('${baseImgUrl}avatar2.webp'),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 12),
                            padding: EdgeInsets.only(
                              bottom: 12,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text('简单不快乐'),
                                          ),
                                          Container(
                                            child: Text(
                                              '5/12 10:24',
                                              style: TextStyle(
                                                color: CommonColor.text2,
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(vertical: 8),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.favorite,
                                              size: 20,
                                              color: CommonColor.text2,
                                            ),
                                            Text('赞了你的在看'),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '简单不快乐在看《三国演义》',
                                        style: TextStyle(
                                          color: CommonColor.text2,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: CommonColor.border,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
      ),
    );
  }
}
