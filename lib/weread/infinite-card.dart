import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfiniteCard extends StatefulWidget {
  @override
  _InfiniteCardState createState() => _InfiniteCardState();
}

class _InfiniteCardState extends State<InfiniteCard> {
  String baseImgUrl = 'images/weread/';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff282B3A),
      appBar: AppBar(
        backgroundColor: Color(0xff282B3A),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text('无限卡会员'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text('明细记录'),
            textColor: Colors.white,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30, left: 12),
            width: width - 12,
            height: (width - 12) * 592 / 952,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('${baseImgUrl}b55.webp'),
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        '过雨',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffC6CCD6),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                      child: Text(
                        '免费试用 · 2021年4月7日到期',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '已使用 229 天 · 累计节省 555.11 元',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 24,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(
                30,
              ),
            ),
            child: Container(
              width: width - 12,
              height: (width - 12) * 592 / 952,
              decoration: BoxDecoration(
                color: Color(0xff363945),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 25),
                    color: Color(0xff40434E),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '无限卡权益',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                padding: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff40434E),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      40,
                                    ),
                                  ),
                                ),
                                child: Image.asset('${baseImgUrl}b66.webp'),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Text(
                                  '全场出版书',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Text(
                                '免费读',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                padding: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff40434E),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      40,
                                    ),
                                  ),
                                ),
                                child: Image.asset('${baseImgUrl}b68.webp'),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Text(
                                  '全场有声内容',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Text(
                                '免费听',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                padding: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff40434E),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      40,
                                    ),
                                  ),
                                ),
                                child: Image.asset('${baseImgUrl}b67.webp'),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Text(
                                  '全场漫画书',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Text(
                                '免费看',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                padding: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff40434E),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      40,
                                    ),
                                  ),
                                ),
                                child: Image.asset('${baseImgUrl}b69.webp'),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Text(
                                  '全场网络小说',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Text(
                                '八折购买',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              child: FLGradientButton.linear(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text('升级为付费会员, 送 50 书币'),
                colors: [Color(0xffD0B37F), Color(0xFFF8DEAF)],
                onPressed: () => print('on click'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.white54,
                  size: 16,
                ),
                Text(
                  ' 已阅读并同意 ',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 12,
                  ),
                ),
                Text(
                  '会员订阅服务条款',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
