import 'package:flutter/material.dart';
import 'package:superflutterapp/utils/style.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List list = [
    {'title': '已购内容'},
    {'title': '交易记录'},
    {'title': '赠送记录'},
    {'title': '自动购买'},
    {'title': '邀请朋友得无限卡'},
    {'title': '赠全国高校师生无限卡'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('账户'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(24),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    '554.01',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  alignment: Alignment.center,
                  child: Text(
                    '充值币 2.97 | 赠币 551.04',
                    style: TextStyle(
                      fontSize: 12,
                      color: CommonColor.text2,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      onPressed: () {},
                      child: Text('充值'),
                      color: Color(0xff459AEF),
                      textColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 12,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Android 余额 1.00',
                    style: TextStyle(fontSize: 12, color: CommonColor.text2),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: list.map<Widget>(
              (item) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  height: 60,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('${item['title']}'),
                      Icon(
                        Icons.chevron_right,
                        color: CommonColor.text2,
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}
