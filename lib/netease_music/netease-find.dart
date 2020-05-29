import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:superflutterapp/netease_music/config.dart';
import 'package:superflutterapp/utils/style.dart';

class NetEaseFind extends StatefulWidget {
  @override
  _NetEaseFindState createState() => _NetEaseFindState();
}

class _NetEaseFindState extends State<NetEaseFind> {
  List swiperList = [
    {'pic': 'ia_100000004188.webp'},
    {'pic': 'ia_100000004218.webp'},
    {'pic': 'ia_100000004601.webp'},
  ];

  List songs = [
    {'pic': 'ia_200000000.webp', 'name': '纯音乐 解压 看书 刷题 睡觉 御用', 'compony': '如是我闻'},
    {'pic': 'ia_200000001.webp', 'name': '纯音乐 解压 看书 刷题 睡觉 御用', 'compony': '如是我闻'},
    {'pic': 'ia_200000002.webp', 'name': '纯音乐 解压 看书 刷题 睡觉 御用', 'compony': '如是我闻'},
    {'pic': 'ia_200000003.webp', 'name': '纯音乐 解压 看书 刷题 睡觉 御用', 'compony': '如是我闻'},
    {'pic': 'ia_200000004.webp', 'name': '纯音乐 解压 看书 刷题 睡觉 御用', 'compony': '如是我闻'},
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_voice),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12),
            child: ClipRRect(
              child: Container(
                height: width * 420 / 1080,
                child: Swiper(
                  autoplayDelay: 6000,
                  loop: true,
                  autoplay: true,
                  itemCount: swiperList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.asset(
                      '$netEaseBaseUrl${swiperList[index]['pic']}',
                      fit: BoxFit.fill,
                    );
                  },
                  pagination: new SwiperPagination(),
                ),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                {'pic': 't_dragonball_icn_daily.png', 'name': '每日推荐'},
                {'pic': 't_dragonball_icn_playlist.png', 'name': '歌单'},
                {'pic': 't_dragonball_icn_rank.png', 'name': '排行榜'},
                {'pic': 't_dragonball_icn_radio.png', 'name': '电台'},
                {'pic': 't_dragonball_icn_fm.png', 'name': '私人FM'},
              ].map<Widget>(
                (item) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: width / 9,
                          height: width / 9,
                          margin: EdgeInsets.only(
                            bottom: 6,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffEA402F),
                            backgroundImage: AssetImage('$netEaseBaseUrl${item['pic']}'),
                          ),
                        ),
                        Text('${item['name']}')
                      ],
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('懂你的精选歌单'),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: CommonColor.border,
                    ),
                  ),
                  child: Text(
                    '查看更多',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                )
              ],
            ),
          ),
          Container(
            height: width * 0.28 + 70,
            padding: EdgeInsets.only(
              left: 12,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: songs.map<Widget>(
                (item) {
                  return Container(
                    width: width * 0.28,
                    margin: EdgeInsets.only(right: 12),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('$netEaseBaseUrl${item['pic']}'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: width * 0.28,
                          width: width * 0.28,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 6,
                                right: 6,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      '100万',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          '${item['name']}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('让你单曲循环的华语歌'),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: CommonColor.border,
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.play_arrow,
                        size: 18,
                      ),
                      Text(
                        ' 播放全部',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                )
              ],
            ),
          ),
          Container(
            height: 360,
            child: PageView.builder(
                controller: PageController(viewportFraction: (width - 12 - 12) / width),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 12),
                    child: Column(
                      children: songs.map<Widget>(
                        (item) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 12),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('$netEaseBaseUrl${item['pic']}'),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 60,
                                  width: 60,
                                  child: Stack(
                                    children: <Widget>[],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '${item['name']}',
                                              style: TextStyle(
                                                color: CommonColor.title,
                                                fontSize: 14,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' - ${item['compony']}',
                                              style: TextStyle(
                                                color: CommonColor.text2,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        '${item['name']}',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: CommonColor.text2,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 12, left: 12),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(color: CommonColor.border),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
