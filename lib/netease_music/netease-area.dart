import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:superflutterapp/netease_music/config.dart';
import 'package:superflutterapp/utils/style.dart';

class NetEaseArea extends StatefulWidget {
  @override
  _NetEaseAreaState createState() => _NetEaseAreaState();
}

class _NetEaseAreaState extends State<NetEaseArea> {
  List list = [
    {'pic': 'ia_100000000.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000001.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000002.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000003.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000004.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000005.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000000.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000001.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000002.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000003.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000004.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
    {'pic': 'ia_100000005.webp', 'title': '怀旧-那个时代的粤语金曲', 'name': '边缘退散', 'times': '1111'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.person_add),
          onPressed: () {},
        ),
        iconTheme: IconThemeData(
          color: CommonColor.title,
        ),
      ),
      body: StaggeredGridView.countBuilder(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        crossAxisCount: 4,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) => ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      '$netEaseBaseUrl${list[index]['pic']}',
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text(
                        '${list[index]['title'] * 3}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
//                      fontSize: 12,
                            ),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage('${netEaseBaseUrl}ia_200000000.webp'),
                                        radius: 30,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ${list[index]['name']}',
                                  )
                                ],
                                style: TextStyle(
                                  color: CommonColor.text2,
                                  height: 1.3,
                                ),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '222 赞 ',
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.more_vert,
                                      size: 20,
                                      color: CommonColor.text2,
                                    ),
                                  ),
                                ],
                                style: TextStyle(
                                  color: CommonColor.text2,
                                  height: 1.3,
                                ),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        staggeredTileBuilder: (int index) => new StaggeredTile.count(2, index.isEven ? 2 : 2.3),
//        staggeredTileBuilder: (index) => new StaggeredTile.fit(2),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}
