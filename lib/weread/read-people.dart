import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';

class ReadPeople extends StatefulWidget {
  final props;

  ReadPeople(this.props);

  @override
  _ReadPeopleState createState() => _ReadPeopleState();
}

class _ReadPeopleState extends State<ReadPeople> {
  int _tab = 0;
  String baseImgUrl = 'images/weread/';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top -
        40 -
        56;
    double width =
        MediaQuery.of(context).size.width - MediaQuery.of(context).padding.left - MediaQuery.of(context).padding.right;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        title: FLAppBarTitle(
          title: '读书排行榜',
          subtitle: '共2994人阅读',
          layout: FLAppBarTitleLayout.vertical,
          titleStyle: TextStyle(
            color: CommonColor.title,
            height: 1,
          ),
          subtitleStyle: TextStyle(
            color: CommonColor.title,
            fontSize: 12,
            height: 1,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        bottom: PreferredSize(
          child: Container(
            height: 40,
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        '朋友在读',
                        style: TextStyle(
                          color: _tab == 0 ? Colors.blue : CommonColor.text,
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _tab = 0;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        '今日在读 · 24',
                        style: TextStyle(
                          color: _tab == 1 ? Colors.blue : CommonColor.text,
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _tab = 1;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(40),
        ),
      ),
      body: Column(
        children: <Widget>[
          Offstage(
            offstage: _tab != 0,
            child: Container(
              height: height,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('关注微信朋友, 查看朋友们的在读信息'),
                  Text(
                    '去关注',
                    style: TextStyle(
                      color: _tab == 0 ? Colors.blue : CommonColor.text,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Offstage(
            offstage: _tab != 1,
            child: Container(
              height: height,
              child: ListView(
                children: [15, 20, 20, 20, 50, 70, 80, 100].map<Widget>(
                  (item) {
                    return Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: CommonColor.border,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FLAvatar(
                            image: Image.asset('${baseImgUrl}avatar2.webp'),
                            width: 40,
                            height: 40,
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('东风'),
                                          Text(
                                            '男 · 浙江 杭州',
                                            style: TextStyle(
                                              color: CommonColor.text2,
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.baseline,
                                        textBaseline: TextBaseline.alphabetic,
                                        children: <Widget>[
                                          Icon(Icons.favorite_border),
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 6,
                                  ),
                                  Text('${item == 100 ? '已读完' : '进度 $item%'}'),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 4),
                                    height: 6,
                                    width: width - 12 - 40,
                                    decoration: BoxDecoration(
                                      color: CommonColor.background,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          height: 6,
                                          width: (width - 12 - 40) / 100 * item,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: item == 100
                                                  ? [Color(0xffD1BB85), Color(0xffE9DAB3)]
                                                  : [Color(0xff4D9DF8), Color(0xff6EB3F9)],
                                            ),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text('阅读 $item分钟 · 1条笔记'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
