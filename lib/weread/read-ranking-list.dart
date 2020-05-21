import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';

class ReadRankingList extends StatefulWidget {
  @override
  _ReadRankingListState createState() => _ReadRankingListState();
}

class _ReadRankingListState extends State<ReadRankingList> {
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
        title: FLAppBarTitle(
          title: '读书排行榜',
          subtitle: '每周日晚24时结算',
          layout: FLAppBarTitleLayout.vertical,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('过雨'),
                    Row(
                      children: <Widget>[
                        Text(
                          '6',
                          style: TextStyle(
                            fontSize: 20,
                            color: CommonColor.text2,
                          ),
                        ),
                        Text(
                          '小时',
                          style: TextStyle(
                            color: CommonColor.text2,
                          ),
                        ),
                        Text(
                          '6',
                          style: TextStyle(
                            fontSize: 20,
                            color: CommonColor.text2,
                          ),
                        ),
                        Text(
                          '分钟 · 第',
                          style: TextStyle(
                            color: CommonColor.text2,
                          ),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 20,
                            color: CommonColor.text2,
                          ),
                        ),
                        Text(
                          '名',
                          style: TextStyle(
                            color: CommonColor.text2,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: CommonColor.text2,
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF1F3F9),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  child: Text(
                    '时长兑无限卡',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Column(
            children: list.map<Widget>(
              (item) {
                return Container(
                  height: 64,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text('${list.indexOf(item) + 1}'),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        width: 30,
                        height: 30,
                        child: ClipOval(
                          child: Image.asset('$baseImgUrl${item['avatar']}'),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '${item['name'] * 12}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${item['time'][0]}',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(text: '小时'),
                              TextSpan(
                                text: '${item['time'][1]}',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(text: '分钟'),
                            ],
                            style: TextStyle(
                              fontSize: 12,
                              color: CommonColor.text2,
                            ),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border,
                              color: CommonColor.text2,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
