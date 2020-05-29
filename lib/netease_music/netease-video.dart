import 'package:flui/flui.dart';
import 'package:flutter/material.dart';
import 'package:superflutterapp/netease_music/config.dart';
import 'package:superflutterapp/utils/style.dart';

class NetEaseVideo extends StatefulWidget {
  @override
  _NetEaseVideoState createState() => _NetEaseVideoState();
}

class _NetEaseVideoState extends State<NetEaseVideo>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  final _tabs = <Tab>[
    Tab(
      text: '推荐',
    ),
    Tab(
      text: '告白',
    ),
    Tab(
      text: '超然联盟',
    ),
    Tab(
      text: '现场',
    ),
    Tab(
      text: '翻唱',
    ),
    Tab(
      text: '清新',
    ),
    Tab(
      text: '古典',
    ),
    Tab(
      text: '爵士',
    ),
    Tab(
      text: '清晨',
    ),
    Tab(
      text: '午休',
    ),
    Tab(
      text: '晚间',
    ),
    Tab(
      text: '睡前',
    ),
    Tab(
      text: '学习',
    ),
  ];
  TabController _tabController;
  PageController _pageController;

  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this, initialIndex: _tabIndex);
    _pageController = PageController(initialPage: _tabIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.video_call),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
          labelColor: Colors.red,
          unselectedLabelColor: CommonColor.text,
          indicatorColor: Colors.red,
          isScrollable: true,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
              _pageController.jumpToPage(_tabIndex);
            });
          },
        ),
      ),
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Container(
//            child: Center(
//              child: Text(
//                _tabs[index].text,
//                style: TextStyle(
//                  color: CommonColor.text,
//                ),
//              ),
//            ),
            child: ListView(
              padding: EdgeInsets.all(12),
              children: <Widget>[
                Column(
                  children: [1, 1, 2, 1, 2, 2].map<Widget>(
                    (item) {
                      return Column(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: (width - 24),
                                  height: (width - 12) * 420 / 1080,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage('${netEaseBaseUrl}ia_100000004218.webp'),
                                    ),
                                  ),
                                  child: Stack(
                                    children: <Widget>[],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text('[一周日语上新] 新樱花大战拉开序幕 梦幻共演叫醒你的耳朵'),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        image: DecorationImage(
                                          image: AssetImage('${netEaseBaseUrl}ia_200000000.webp'),
                                        ),
                                        border: Border.all(color: Colors.black87, width: 4),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(right: 10),
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(40),
                                                image: DecorationImage(
                                                  image: AssetImage('${netEaseBaseUrl}ia_200000000.webp'),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                '云音乐樱花酱',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 12),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              FLBadge(
                                                child: Icon(
                                                  Icons.thumb_up,
                                                  color: CommonColor.text2,
                                                ),
                                                text: '36',
                                                color: Colors.transparent,
                                                textStyle: TextStyle(
                                                  color: CommonColor.text2,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              FLBadge(
                                                child: Icon(
                                                  Icons.message,
                                                  color: CommonColor.text2,
                                                ),
                                                text: '36',
                                                color: Colors.transparent,
                                                textStyle: TextStyle(
                                                  color: CommonColor.text2,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Icon(
                                                Icons.perm_identity,
                                                size: 30,
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
                            height: 6,
                            color: CommonColor.background,
                          )
                        ],
                      );
                    },
                  ).toList(),
                )
              ],
            ),
          );
        },
        itemCount: _tabs.length,
        controller: _pageController,
        onPageChanged: (ind) {
          setState(() {
            _tabIndex = ind;
            _tabController.animateTo(_tabIndex);
          });
        },
      ),
    );
  }
}
