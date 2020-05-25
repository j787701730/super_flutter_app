import 'package:flutter/material.dart';
import 'package:superflutterapp/netease_music/netease-account.dart';
import 'package:superflutterapp/netease_music/netease-area.dart';
import 'package:superflutterapp/netease_music/netease-find.dart';
import 'package:superflutterapp/netease_music/netease-my.dart';
import 'package:superflutterapp/netease_music/netease-video.dart';

class NetEaseHome extends StatefulWidget {
  final index;

  NetEaseHome({this.index = 0});

  @override
  _NetEaseHomeState createState() => _NetEaseHomeState();
}

class _NetEaseHomeState extends State<NetEaseHome> {
  int _navIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _navIndex = widget.index;
    _pageController = PageController(initialPage: _navIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  List list = [NetEaseFind(), NetEaseVideo(), NetEaseMy(), NetEaseArea(), NetEaseAccount()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        //禁止页面左右滑动切换
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _navIndex = index;
          });
        },
        itemCount: list.length,
        itemBuilder: (context, index) => list[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _navIndex,
        selectedFontSize: 12,
        selectedItemColor: Color(0xffEA402F),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('发现'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            title: Text('视频'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            title: Text('我的'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            title: Text('云村'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('账号'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _navIndex = index;
            _pageController.jumpToPage(index);
          });
        },
      ),
    );
  }
}
