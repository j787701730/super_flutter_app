import 'package:flutter/material.dart';
import 'package:flui/flui.dart';
import 'package:provider/provider.dart';
import 'utils/provider.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
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
    );
  }
}
