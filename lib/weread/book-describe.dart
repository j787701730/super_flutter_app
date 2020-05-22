import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';
import 'package:flutter/services.dart';

class BookDescribe extends StatefulWidget {
  final props;

  BookDescribe(this.props);

  @override
  _BookDescribeState createState() => _BookDescribeState();
}

class _BookDescribeState extends State<BookDescribe> {
  String baseImgUrl = 'images/weread/';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: CommonColor.text,
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
              Icons.launch,
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
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: 'book-desc',
                      child: Container(
                        width: width / 4,
                        child: Image.asset('${widget.props['pic']}'),
                      ),
                    ),
                    Container(
                      width: 24,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '重案追击：悬疑小说精选（套装共12册）',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '王文杰 陈猛等',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                              height: 2,
                            ),
                          ),
                          Text(
                            '惊天奇案，再度来袭！神秘事件惊悚奇案扭曲人性唯有智慧，能终结心底的阴暗烧脑犯罪悬疑小说精品集本套装包括：《法医专家》《法医专家.2》《特案侦查组》《特案侦查组.2》《犯罪侧写师》《犯罪侧写师.2》《窥心者》《积案调查组》《刑警手记之异案现场》《解剖室奇异事件》《执剑者：心理画像师》《重案追击：罪恶的心理画像》',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.add_shopping_cart,
                                color: CommonColor.text2,
                                size: 18,
                              ),
                              Text(' '),
                              Text(
                                '19.99',
                                style: TextStyle(
                                  color: CommonColor.text2,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              Text(
                                ' · 无限卡',
                                style: TextStyle(
                                  color: CommonColor.text2,
                                ),
                              ),
                              Container(
                                width: 12,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.menu,
                                    color: CommonColor.text2,
                                  ),
                                  Text(
                                    '简介与目录',
                                    style: TextStyle(
                                      color: CommonColor.text2,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  '9.0',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: CommonColor.text,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: CommonColor.text2,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: CommonColor.text2,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: CommonColor.text2,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: CommonColor.text2,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        size: 20,
                                        color: CommonColor.text2,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '573人点评',
                                  style: TextStyle(
                                    color: CommonColor.text2,
                                    fontSize: 12,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 16,
                                  color: CommonColor.text2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  '9999',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: CommonColor.text,
                                  ),
                                ),
                                Text(
                                  '人',
                                  style: TextStyle(
                                    color: CommonColor.text2,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '阅读此书',
                                  style: TextStyle(
                                    color: CommonColor.text2,
                                    fontSize: 12,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 16,
                                  color: CommonColor.text2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 2,
            color: CommonColor.border,
          ),
          Container(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '轻点评分',
                  style: TextStyle(
                    color: CommonColor.text2,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star_border,
                      size: 34,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 34,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 34,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 34,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 34,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 6,
            color: CommonColor.border,
          ),
          Column(
            children: [1, 1, 1, 1, 1, 1, 1].map<Widget>(
              (item) {
                return Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              FLAvatar(
                                width: 30,
                                height: 30,
                                image: Image.asset('${baseImgUrl}avatar2.webp'),
                              ),
                              Text('  简单不快乐'),
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
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              '惊天奇案，再度来袭！神秘事件惊悚奇案扭曲人性唯有智慧，能终结心底的阴暗烧脑犯罪悬疑小说精品集本套装包括：《法医专家》《法医专家.2》《特案侦查组》《特案侦查组.2》《犯罪侧写师》《犯罪侧写师.2》《窥心者》《积案调查组》《刑警手记之异案现场》《解剖室奇异事件》《执剑者：心理画像师》《重案追击：罪恶的心理画像》',
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
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
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 6,
                      color: CommonColor.border,
                    ),
                  ],
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}
