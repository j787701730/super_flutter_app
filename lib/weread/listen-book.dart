import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';

class ListenBook extends StatefulWidget {
  @override
  _ListenBookState createState() => _ListenBookState();
}

class _ListenBookState extends State<ListenBook> {
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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        iconTheme: IconThemeData(
          color: CommonColor.title,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: FLBadge(
              child: Icon(
                Icons.perm_identity,
                size: 30,
              ),
              text: '36',
              color: Colors.transparent,
              textStyle: TextStyle(
                color: CommonColor.text,
                fontSize: 12,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.update,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 12),
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: width / 3,
                child: Image.asset(
                  '${baseImgUrl}ia_100000008.webp',
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                '七种武器',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '古龙',
                    style: TextStyle(
                      color: CommonColor.text2,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: CommonColor.text2,
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: <Widget>[
                Icon(Icons.replay_10),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    height: 30,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            height: 4,
                            color: CommonColor.border,
                          ),
                          top: 13,
                          left: 0,
                          right: 0,
                        ),
                        Positioned(
                          child: Container(
                            height: 30,
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: CommonColor.border,
                              ),
                              color: Colors.white,
                            ),
                            child: Text(
                              '00:00/09:02',
                              style: TextStyle(
                                fontSize: 12,
                                color: CommonColor.text2,
                              ),
                            ),
                          ),
                          top: 0,
                          left: 0,
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(Icons.forward_10),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.timer,
                    ),
                    Text(
                      '定时',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.first_page,
                  size: 34,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 34,
                  ),
                ),
                Icon(
                  Icons.last_page,
                  size: 34,
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                    ),
                    Text(
                      '共1集',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Wrap(
              spacing: 12,
              alignment: WrapAlignment.center,
              children: <Widget>[
                Container(
                  height: 30,
                  width: width / 5,
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: CommonColor.border,
                    ),
                    color: Colors.white,
                  ),
                  child: Text(
                    '免费',
                    style: TextStyle(
                      fontSize: 12,
                      color: CommonColor.text,
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: width / 5,
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: CommonColor.border,
                    ),
                    color: Colors.white,
                  ),
                  child: Text(
                    '加入书架',
                    style: TextStyle(
                      fontSize: 12,
                      color: CommonColor.text,
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: width / 5,
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: CommonColor.border,
                    ),
                    color: Colors.white,
                  ),
                  child: Text(
                    '阅读电子书',
                    style: TextStyle(
                      fontSize: 12,
                      color: CommonColor.text,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: CommonColor.background,
            ),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ClipOval(
                      child: Container(
                        width: 30,
                        height: 30,
                        child: Image.asset('${baseImgUrl}avatar2.webp'),
                      ),
                    ),
                    Container(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('切换到AI语音朗读'),
                        Text(
                          '中文版序',
                          style: TextStyle(
                            fontSize: 12,
                            color: CommonColor.text2,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          Container(
            height: 6,
            color: CommonColor.border,
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text('听书推荐'),
                ),
                Wrap(
                  spacing: 12,
                  children: books.map<Widget>(
                    (item) {
                      return Container(
                        width: (width - 24 - 12 * 3) / 4,
                        height: (width - 24 - 12 * 3) / 4 * 360 / 250,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Image.asset('$baseImgUrl${item['pic']}'),
                            ),
                            Positioned(
                              child: Center(
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(0xCC, 0, 0, 0),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
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
                Container(
                  width: width - 24,
                  margin: EdgeInsets.only(top: 12),
                  child: FLFlatButton(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    color: CommonColor.background,
//                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('换一批'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 6,
            color: CommonColor.border,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: CommonColor.border,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Wrap(
                  spacing: 12,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      behavior: HitTestBehavior.opaque,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text('评论 8'),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      behavior: HitTestBehavior.opaque,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text('赞 8'),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.transparent, width: 2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text('热门评论'),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(right: 12),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffEA402F),
                          backgroundImage: AssetImage('${baseImgUrl}avatar2.webp'),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'ZOE',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: CommonColor.text2,
                                      ),
                                    ),
                                    Text(
                                      ' · 04/12 12:24',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: CommonColor.text2,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '18',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: CommonColor.text2,
                                      ),
                                    ),
                                    Icon(
                                      Icons.favorite_border,
                                      size: 18,
                                      color: CommonColor.text2,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Text('随着绳子被慢慢提出水面，离开水面的一刹那，一具保存完好的尸体出现了。这是一具男性老年尸体，'
                                '脸上的皮肤已经起了皱纹，留着山羊胡须，最让人瞩目的是这个人有一对巨大的耳朵，并且眼球严重向外凸出，'
                                '让人觉得十分恐怖，好在两个人胆子都挺大，只是微微皱了皱眉头。')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text('最新评论'),
                ),
                Column(
                  children: [1, 1, 1, 1, 1].map<Widget>(
                    (item) {
                      return Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 12),
                              child: CircleAvatar(
                                backgroundColor: Color(0xffEA402F),
                                backgroundImage: AssetImage('${baseImgUrl}avatar2.webp'),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'ZOE',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: CommonColor.text2,
                                            ),
                                          ),
                                          Text(
                                            ' · 04/12 12:24',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: CommonColor.text2,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            '18',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: CommonColor.text2,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_border,
                                            size: 18,
                                            color: CommonColor.text2,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text('随着绳子被慢慢提出水面，离开水面的一刹那，一具保存完好的尸体出现了。'),
                                  Divider(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
