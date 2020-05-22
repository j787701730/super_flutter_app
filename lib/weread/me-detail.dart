import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';
import 'package:superflutterapp/weread/weread-home.dart';

class MeDetail extends StatefulWidget {
  @override
  _MeDetailState createState() => _MeDetailState();
}

class _MeDetailState extends State<MeDetail> {
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
        title: Text('我的详情'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        iconTheme: IconThemeData(
          color: CommonColor.title,
        ),
        brightness: Brightness.light,
      ),
      body: ListView(
        children: <Widget>[
          Container(
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
                  child: FLAvatar(
                    width: 100,
                    height: 100,
                    image: Image.asset('${baseImgUrl}avatar2.webp'),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Text(
                  '男 · 福建 福州',
                  style: TextStyle(),
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
                        style: TextStyle(),
                      ),
                      Text(
                        '读书时长',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '1000条',
                        style: TextStyle(),
                      ),
                      Text(
                        '收到的赞',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '12人',
                        style: TextStyle(),
                      ),
                      Text(
                        '关注我',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 6,
            color: Color(0xffF0F0F0),
          ),
          Container(
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
                                height: 60,
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WeReadHome(
                            index: 1,
                          ),
                        ),
                        ModalRoute.withName('/home'),
                      );
                    },
                    child: Text('查看书架'),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 6,
            color: Color(0xffF0F0F0),
          ),
          Column(
            children: [1, 2, 2, 2, 2, 2].map<Widget>(
              (item) {
                return Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FLAvatar(
                            width: 30,
                            height: 30,
                            image: Image.asset('${baseImgUrl}avatar2.webp'),
                          ),
                          Container(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text('简单不快乐'),
                                        Text(
                                          '  点评  ',
                                          style: TextStyle(
                                            color: CommonColor.text2,
                                          ),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: CommonColor.text2,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: CommonColor.text2,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: CommonColor.text2,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: CommonColor.text2,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          size: 16,
                                          color: CommonColor.text2,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(' 删除 '),
                                        Text(
                                          '2020/02/02',
                                          style: TextStyle(
                                            color: CommonColor.text2,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: CommonColor.background,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.all(12),
                                  margin: EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 12),
                                        width: 80,
                                        child: Image.asset('${baseImgUrl}ia_100000003.webp'),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('锋利的jQuery'),
                                          Text('单东林'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Icon(
                                        Icons.launch,
                                        color: CommonColor.text2,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.favorite_border,
                                            color: CommonColor.text2,
                                          ),
                                          Text(
                                            ' 12',
                                            style: TextStyle(
                                              color: CommonColor.text2,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.chat_bubble_outline,
                                            color: CommonColor.text2,
                                          ),
                                          Text(
                                            ' 12',
                                            style: TextStyle(
                                              color: CommonColor.text2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: CommonColor.background,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.all(12),
                                  margin: EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.favorite,
                                        color: CommonColor.text2,
                                      ),
                                      Container(
                                        child: FLAvatar(
                                          width: 30,
                                          height: 30,
                                          image: Image.asset('${baseImgUrl}avatar2.webp'),
                                        ),
                                        margin: EdgeInsets.symmetric(horizontal: 12),
                                      ),
                                      Text(
                                        '等2人赞',
                                        style: TextStyle(
                                          color: CommonColor.text2,
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
                    Container(
                      height: 6,
                      color: Color(0xffF0F0F0),
                    ),
                  ],
                );
              },
            ).toList(),
          )
        ],
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}
