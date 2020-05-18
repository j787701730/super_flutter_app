import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:superflutterapp/utils/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FLToastDefaults _toastDefaults = FLToastDefaults();
  DateTime _lastPressedAt; //上次点击时间
  PageController _pageController;
  Map upDesc = {};
  List page = [];
  int _pageIndex = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _pageIndex,
      keepPage: true,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

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
              title: '休息下',
              customAccessoryWidget: Icon(
                Icons.print,
                color: Colors.white,
              ),
              accessoryPosition: FLAppBarPosition.left,
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: Column(
              children: <Widget>[
                FLRaisedButton(
                  onPressed: () => context.read<ProviderSelf>().changeThemeMode(),
                  child: Text('${context.watch<ProviderSelf>().themeMode == ThemeMode.dark ? '浅色模式' : '深色模式'}'),
                ),
                FLRaisedButton(
                  onPressed: () => context.read<ProviderSelf>().changeColorFilter(),
                  child: Text('${context.watch<ProviderSelf>().colorFilter == Colors.white ? '正常模式' : '灰度模式'}'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
