import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'settings.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FLToastDefaults _toastDefaults = FLToastDefaults();
  DateTime _lastPressedAt; //上次点击时间

  List list = [
    {'name': '微信读书', 'route': '/weReadHome'},
//    {'name': '微信读书', 'route': '/weReadHome'},
  ];

  @override
  Widget build(BuildContext context) {
//    double width = MediaQuery.of(context).size.width;
    return FLToastProvider(
      defaults: _toastDefaults,
      child: WillPopScope(
        onWillPop: () async {
          FLToast.showText(
            text: '再按一次退出app',
            position: FLToastPosition.bottom,
            showDuration: Duration(milliseconds: 1500),
          );
          if (_lastPressedAt == null || DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
            // 两次点击间隔超过1秒则重新计时
            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            title: FLAppBarTitle(
              title: '主页',
              customAccessoryWidget: Icon(
                Icons.print,
                color: Colors.white,
              ),
              accessoryPosition: FLAppBarPosition.left,
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
                      ),
                    );
                  })
            ],
          ),
          body: Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                childAspectRatio: 4,
              ),
//              reverse: true,
//              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int position) {
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.of(context).pushNamed('${list[position]['route']}');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text('${list[position]['name']}'),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
