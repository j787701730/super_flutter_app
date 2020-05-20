import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/weread/me-detail.dart';

class Me extends StatefulWidget {
  @override
  _MeState createState() => _MeState();
}

class _MeState extends State<Me> {
  String baseImgUrl = 'images/weread/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text('我'),
        leading: IconButton(
          icon: Icon(Icons.mail),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MeDetail(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'touxiang',
                          child: ClipOval(
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Image.asset(
                                '${baseImgUrl}avatar.webp',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Text(
                          '编辑个人资料',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(
                              0xff666666,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.chevron_right,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 12,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            child: Image.asset('${baseImgUrl}b44.webp'),
                          ),
                          Text('账户')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('13.90'),
                          Text(
                            '已购3本书',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(
                                0xff666666,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            child: Image.asset('${baseImgUrl}b4a.webp'),
                          ),
                          Text('好友排名'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('第一名'),
                          Text(
                            '2小时21分钟',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(
                                0xff666666,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            child: Image.asset('${baseImgUrl}b47.webp'),
                          ),
                          Text('关注'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('5人关注我'),
                          Text(
                            '已关注6人',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(
                                0xff666666,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 12,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            child: Image.asset('${baseImgUrl}b4b.webp'),
                          ),
                          Text('笔记')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('13个'),
                          Text(
                            '1个赞0个评论',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(
                                0xff666666,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            child: Image.asset('${baseImgUrl}b4d.webp'),
                          ),
                          Text('音频')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('13个'),
                          Text(
                            '3次收听',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(
                                0xff666666,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 22,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            child: Image.asset('${baseImgUrl}b45.webp'),
                          ),
                          Text('书单')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('1个'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
