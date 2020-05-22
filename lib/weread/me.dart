import 'package:bot_toast/bot_toast.dart';
import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/weread/account.dart';
import 'package:superflutterapp/weread/follow.dart';
import 'package:superflutterapp/weread/infinite-card.dart';
import 'package:superflutterapp/weread/me-detail.dart';
import 'package:superflutterapp/weread/read-notes.dart';
import 'package:superflutterapp/weread/read-ranking-list.dart';

class Me extends StatefulWidget {
  @override
  _MeState createState() => _MeState();
}

class _MeState extends State<Me> {
  String baseImgUrl = 'images/weread/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECEDEF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        title: Text(
          '我',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.mail_outline),
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
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Hero(
                              tag: 'touxiang',
                              child: FLAvatar(
                                width: 100,
                                height: 100,
                                image: Image.asset('${baseImgUrl}avatar2.webp'),
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
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    child: Text(
                      '过雨',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text(
                      '佛为心，道为骨，儒为表，大度看世界；技在手，能在身，思在脑，从容过生活。',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(
                          0xff999999,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 6,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Account(),
                      ),
                    );
                  },
                  child: Container(
                    height: 70,
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
                                  0xff999999,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfiniteCard(),
                      ),
                    );
                  },
                  child: Container(
                    height: 70,
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
                              child: Image.asset('${baseImgUrl}b4c.webp'),
                            ),
                            Text('无限卡 · 免费试用')
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('还剩13天'),
                            Text(
                              '累计节省657.67元',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(
                                  0xff999999,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 6,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadRankingList(),
                      ),
                    );
                  },
                  child: Container(
                    height: 70,
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
                            Text('读书排名榜'),
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
                                  0xff999999,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Follow(),
                      ),
                    );
                  },
                  child: Container(
                    height: 70,
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
                              '已关注6人 读书小队29分',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(
                                  0xff999999,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              BotToast.showText(
                text: '未开发',
                align: Alignment(0, 0),
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 6,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 70,
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
                              child: Image.asset('${baseImgUrl}b48.webp'),
                            ),
                            Text('每日一答'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('通关108次'),
                            Text(
                              '获得200天无限卡',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(
                                  0xff999999,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 6,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadNotes(),
                      ),
                    );
                  },
                  child: Container(
                    height: 70,
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
                            Text('笔记、读过和赞过')
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('13个'),
                            Text(
                              '赞过220次',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(
                                  0xff999999,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 70,
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
