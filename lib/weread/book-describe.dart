import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:superflutterapp/utils/style.dart';
import 'package:superflutterapp/weread/read-people.dart';
import 'package:bubble/bubble.dart';

import '../utils/style.dart';

class BookDescribe extends StatefulWidget {
  final props;

  BookDescribe(this.props);

  @override
  _BookDescribeState createState() => _BookDescribeState();
}

class _BookDescribeState extends State<BookDescribe> {
  String baseImgUrl = 'images/weread/';
  bool showEvaluate = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnnotatedRegion(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Positioned(
              height: 56,
              child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: Container(
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        tooltip: '返回',
                        icon: Icon(
                          Icons.arrow_back_ios,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Row(
                        children: <Widget>[
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
                      )
                    ],
                  ),
                ),
              ),
              top: MediaQuery.of(context).padding.top,
              left: 0,
              right: 0,
            ),
            Positioned(
              left: 0,
              top: MediaQuery.of(context).padding.top + 56,
              right: 0,
              bottom: 60,
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag: 'book-desc',
                                child: Container(
                                  width: width * 0.2,
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
                                        height: 1.5,
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.add_shopping_cart,
                                          color: CommonColor.text2,
                                          size: 14,
                                        ),
                                        Text(' '),
                                        Text(
                                          '19.99',
                                          style: TextStyle(
                                            color: CommonColor.text2,
                                            decoration: TextDecoration.lineThrough,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          ' · 无限卡',
                                          style: TextStyle(
                                            color: CommonColor.text2,
                                            fontSize: 12,
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
                                              size: 14,
                                            ),
                                            Text(
                                              '简介与目录',
                                              style: TextStyle(
                                                color: CommonColor.text2,
                                                fontSize: 12,
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
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () {
                                      setState(() {
                                        showEvaluate = !showEvaluate;
                                      });
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              '9.0',
                                              style: TextStyle(
                                                fontSize: 24,
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
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ReadPeople({}),
                                        ),
                                      );
                                    },
                                    behavior: HitTestBehavior.opaque,
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.baseline,
                                          textBaseline: TextBaseline.alphabetic,
                                          children: <Widget>[
                                            Text(
                                              '9999',
                                              style: TextStyle(
                                                fontSize: 24,
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
                      padding: EdgeInsets.all(12),
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
                                padding: EdgeInsets.all(12),
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
              ),
            ),
            Positioned(
              child: Container(
                height: 60,
                color: CommonColor.background,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      textColor: Colors.blue,
                      onPressed: () {},
                      child: Text('听书'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      textColor: Colors.blue,
                      child: Text('阅读'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      textColor: Colors.blue,
                      child: Text('加入书架'),
                    ),
                  ],
                ),
              ),
              left: 0,
              right: 0,
              bottom: 0,
            ),
            Positioned(
              left: 0,
              top: -MediaQuery.of(context).padding.top,
              bottom: -MediaQuery.of(context).padding.bottom,
              right: 0,
              child: Offstage(
                offstage: showEvaluate,
                child: Container(
                  width: width,
                  height: height,
//                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(0x66, 0, 0, 0),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        top: 0,
                        child: ListView(
                          padding: EdgeInsets.only(
                            bottom: 100,
                            top: 40,
                          ),
                          children: [1, 1, 1, 1, 1].map<Widget>(
                            (item) {
                              return Container(
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: FLAvatar(
                                        image: Image.asset('${baseImgUrl}avatar2.webp'),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Bubble(
                                      nip: BubbleNip.leftBottom,
                                      color: Color.fromARGB(0xCC, 0, 0, 0),
                                      child: Container(
                                        width: width - 48 - 54,
                                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '财大气粗杰',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                              softWrap: true,
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              '两个手掌再一次紧紧地握在了一起，查文斌看着这两个讲义气的后生，心中那股郁闷劲此刻也已经去了大半，他伸出双手紧紧地握住两人：“好个同生共死！两位好兄弟，不要怕，既然有人置我们于死地，那么也不能便宜了他！从我进山的第一刻起，这其实就是一个局，有人故意掳走了老王和冷姑娘，又故意让我们发现了这口古井，我想即使你们有人留在了上面，现在也未必就是安全的，更加容易被他各个击破。',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                              softWrap: true,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                children: [
//                                                  WidgetSpan(child: Icon(Icons.pages)),
                                                  TextSpan(
                                                    text: '>> 满目荆棘 ',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '前面那个水潭，是一道非常厉害的阵中阵，甚至连我们现在所处的整个村子，包括这口古井，恐怕都只是某个大阵里的一个环节，你们下来之前，我无意之中破了它其中一阵，但似乎对于整个阵法没有起到太大作用，你们两个等下注意，你们手中的匕首和枪并不能对鬼怪这类东西造成多大伤害，尤其是阵法，只有破了它的阵眼，我们才能有一线生机。',
                                                  ),
                                                ],
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  top: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                              margin: EdgeInsets.only(
                                                top: 12,
                                              ),
                                              padding: EdgeInsets.only(
                                                top: 12,
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.favorite_border,
                                                        color: Colors.white,
                                                        size: 20,
                                                      ),
                                                      Text(
                                                        ' 8',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.chat_bubble_outline,
                                                        color: Colors.white,
                                                        size: 20,
                                                      ),
                                                      Text(
                                                        ' 8',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: width / 2 - 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Material(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.black87,
                              child: IconButton(
                                color: Colors.white,
                                icon: Icon(
                                  Icons.close,
                                ),
                                onPressed: () {
                                  setState(() {
                                    showEvaluate = !showEvaluate;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
          overflow: Overflow.visible,
        ),
      ),
      value: SystemUiOverlayStyle.dark,
    );
  }
}
