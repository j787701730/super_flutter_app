import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';
import 'package:superflutterapp/weread/book-describe.dart';
import 'package:superflutterapp/weread/free-library.dart';
import 'package:superflutterapp/weread/listen-book.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  PageController _pageController;
  String baseImgUrl = 'images/weread/';
  List pages = [
    {
      'type': 1,
      'pic': 'ia_100000006.webp',
      'title': '东风满太虚在斗罗大陆发家史',
      'author': '东风满太虚(著)',
      'read_avatar': 'ia_100000000.webp',
      'read_name': '过雨',
      'times': '45'
    },
    {
      'type': 2,
      'list': [
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
        {
          'pic': 'ia_100000005.webp',
          'title': '东风满太虚发家史',
          'author': '东风满太虚',
          'read_avatar': 'ia_100000000.webp',
        },
        {
          'pic': 'ia_100000006.webp',
          'title': '东风满太虚发家史',
          'author': '东风满太虚',
          'read_avatar': 'ia_100000000.webp',
        },
      ]
    },
    {
      'type': 3,
      'pic': 'fanyifan.webp',
    },
    {
      'type': 4,
      'pic': 'ia_100000008.webp',
      'title': '东风满太虚在斗罗大陆发家史',
      'author': '东风满太虚(著)',
      'read_avatar': 'ia_100000000.webp',
      'read_name': '过雨',
      'times': '45'
    }
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.85);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  pageView(context, index) {
    Map item = pages[index];
    double width = MediaQuery.of(context).size.width * 0.85 - 20 - 12;
    switch (item['type']) {
      case 1:
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDescribe({'pic': '$baseImgUrl${item['pic']}'}),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: <Widget>[
                        Hero(
                          tag: 'book-desc',
                          child: Container(
                            width: width / 3,
                            child: Image.asset('$baseImgUrl${item['pic']}'),
                          ),
                        ),
                        Container(
                          child: Text('${item['title']}'),
                        ),
                        Container(
                          child: Text(
                            '${item['author']}',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: ClipOval(
                            child: Image.asset('$baseImgUrl${item['read_avatar']}'),
                          ),
                        ),
                        Container(
                          child: Text('${item['read_name']}在读'),
                        ),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.perm_identity,
                                size: 20,
                              ),
                              Text(' ${item['times']}')
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
        break;
      case 2:
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FreeLibrary(),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text('讲书分享免费读'),
                        Text('第17期'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: item['list'].map<Widget>(
                            (list) {
                              return Container(
                                width: width / 3 - 20,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Image.asset('$baseImgUrl${list['pic']}'),
                                    ),
                                    Container(
                                      height: 50,
                                      child: Text(
                                        '${list['title'] * 5}',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ).toList(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width - 44,
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: FLFlatButton(
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text('免费领取'),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
        break;
      case 3:
        return ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            '翻一翻',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(' / 第 61 期')
                        ],
                      ),
                      Text('有空常来翻一翻, 好书好礼翻出来')
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: width + 24,
                    color: Color(0xff7FC3F4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: width * 0.6,
                          child: Image.asset('$baseImgUrl${item['pic']}'),
                        ),
                        Container(
                          child: Text(
                            '123234人 · 已翻到福利',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
        break;
      case 4:
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ListenBook(),
                fullscreenDialog: true,
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: width / 2,
                          child: Image.asset('$baseImgUrl${item['pic']}'),
                        ),
                        Container(
                          child: Text('${item['title']}'),
                        ),
                        Container(
                          child: Text(
                            '${item['author']}',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width - 44,
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: FLFlatButton(
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text('立即收听'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: ClipOval(
                            child: Image.asset('$baseImgUrl${item['read_avatar']}'),
                          ),
                        ),
                        Container(
                          child: Text('${item['read_name']}在读'),
                        ),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.perm_identity,
                                size: 20,
                              ),
                              Text(' ${item['times']}')
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
        break;
      default:
        return Container(
          alignment: Alignment.center,
          child: Text('类型不存在'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: CommonColor.title,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: pageView(context, index),
          );
        },
        itemCount: pages.length,
      ),
    );
  }
}
