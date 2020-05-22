import 'package:flutter/material.dart';
import 'package:superflutterapp/weread/books.dart';
import 'package:superflutterapp/weread/find.dart';
import 'package:superflutterapp/weread/idea.dart';
import 'package:superflutterapp/weread/me.dart';

class WeReadHome extends StatefulWidget {
  final index;

  WeReadHome({this.index = 0});

  @override
  _WeReadHomeState createState() => _WeReadHomeState();
}

class _WeReadHomeState extends State<WeReadHome> {
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

  List list = [Find(), Books(), Idea(), Me()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('发现'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('书架'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_vintage),
            title: Text('看一看'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('我'),
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
