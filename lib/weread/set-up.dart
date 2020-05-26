import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';

class SetUp extends StatefulWidget {
  @override
  _SetUpState createState() => _SetUpState();
}

class _SetUpState extends State<SetUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECEDEF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        iconTheme: IconThemeData(
          color: CommonColor.title,
        ),
        title: Text(
          '设置',
          style: TextStyle(color: CommonColor.title),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: ['阅读时不自动锁屏', '阅读时横屏', '阅读时隐藏想法', '首行缩进'].map<Widget>(
              (item) {
                return FLListTile(
                  backgroundColor: Colors.white,
                  onTap: () {},
                  title: Text('$item'),
                  trailing: CupertinoSwitch(
                    value: '$item' == '首行缩进',
                    activeColor: Color(0xff4186E7),
                    onChanged: (val) {},
                  ),
                );
              },
            ).toList(),
          ),
          FLListTile(
            onTap: () {},
            backgroundColor: Colors.white,
            title: Text('翻页方式'),
            trailing: Container(
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '左右滑动',
                    style: TextStyle(
                      color: CommonColor.text2,
                      fontSize: 12,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: CommonColor.text2,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 6,
            color: CommonColor.background,
          ),
          FLListTile(
            backgroundColor: Colors.white,
            onTap: () {},
            title: Text('关闭看一看的文章推荐'),
            subtitle: Text(
              '看一看中将仅推荐你可能喜欢的书籍和书评',
              style: TextStyle(
                fontSize: 12,
                color: CommonColor.text2,
              ),
            ),
            trailing: CupertinoSwitch(
              value: false,
              activeColor: Color(0xff4186E7),
              onChanged: (val) {},
            ),
          ),
          Container(
            height: 6,
            color: CommonColor.background,
          ),
          Column(
            children: ['隐私', '通知', '清理缓存'].map<Widget>(
              (item) {
                return FLListTile(
                  backgroundColor: Colors.white,
                  onTap: () {},
                  title: Text('$item'),
                  trailing: Icon(Icons.chevron_right),
                );
              },
            ).toList(),
          ),
          Container(
            height: 6,
            color: CommonColor.background,
          ),
          Column(
            children: ['关于微信读书', '关注微信公众号', '帮助与反馈'].map<Widget>(
              (item) {
                return FLListTile(
                  backgroundColor: Colors.white,
                  onTap: () {},
                  title: Text('$item'),
                  trailing: Icon(Icons.chevron_right),
                );
              },
            ).toList(),
          ),
          Container(
            height: 6,
            color: CommonColor.background,
          ),
          FLListTile(
            backgroundColor: Colors.white,
            onTap: () {},
            title: Container(
              alignment: Alignment.center,
              child: Text(
                '退出登录',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
