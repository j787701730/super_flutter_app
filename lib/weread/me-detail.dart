import 'package:flutter/material.dart';

class MeDetail extends StatefulWidget {
  @override
  _MeDetailState createState() => _MeDetailState();
}

class _MeDetailState extends State<MeDetail> {
  String baseImgUrl = 'images/weread/';
  List books = [
    {
      'pic': 'ia_100000001.webp',
      'title': '余文杰发家史',
      'author': '余文杰',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000002.webp',
      'title': '余文杰发家史',
      'author': '余文杰',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000003.webp',
      'title': '余文杰发家史',
      'author': '余文杰',
      'read_avatar': 'ia_100000000.webp',
    },
    {
      'pic': 'ia_100000004.webp',
      'title': '余文杰发家史',
      'author': '余文杰',
      'read_avatar': 'ia_100000000.webp',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff383838),
      appBar: AppBar(
        backgroundColor: Color(0xff383838),
        title: Text('我的详情'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xff383838),
            padding: EdgeInsets.symmetric(
              vertical: 12,
            ),
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
                  '男 · 福建 福州',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '12时00分',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '读书时长',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '1000条',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '收到的赞',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '12人',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '关注我',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 12,
            color: Color(0xffF0F0F0),
          ),
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  child: Text('最近阅读'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Wrap(
                    spacing: 24,
                    children: books.map<Widget>(
                      (item) {
                        return Container(
                          width: (width - 48 - 24 * 3) / 4,
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
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Color(0xffF0F0F0),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  alignment: Alignment.center,
                  child: Text('查看书架'),
                )
              ],
            ),
          ),
          Container(
            height: 12,
            color: Color(0xffF0F0F0),
          ),
          Container(
            height: 500,
            color: Colors.white,
          ),
        ],
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}
