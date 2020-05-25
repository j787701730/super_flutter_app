import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:superflutterapp/error-page.dart';
import 'package:superflutterapp/netease_music/netease-home.dart';
import 'package:superflutterapp/weread/weread-home.dart';

import 'app.dart';
import 'utils/localizations.dart';
import 'utils/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderSelf()),
      ],
      child: MyApp(),
    ),
  );
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  ThemeData _buildDarkTheme() {
    final ThemeData base = ThemeData(
      brightness: Brightness.dark,
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      platform: TargetPlatform.iOS,
      textTheme: TextTheme(
        subtitle2: TextStyle(
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
    );
    return base;
  }

  ThemeData _buildLightTheme() {
    final ThemeData base = ThemeData(
      brightness: Brightness.light,
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: Brightness.light,
      ),
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      platform: TargetPlatform.iOS,
      textTheme: TextTheme(
        subtitle2: TextStyle(
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
    );
    return base;
  }

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        context.watch<ProviderSelf>().colorFilter,
        BlendMode.color,
      ),
      child: MaterialApp(
        title: 'Flutter App',
        themeMode: context.watch<ProviderSelf>().themeMode,
        theme: _buildLightTheme(),
        darkTheme: _buildDarkTheme(),
        home: MyHomePage(),
        builder: BotToastInit(),
        //1. call BotToastInit
        navigatorObservers: [BotToastNavigatorObserver()],
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate, // 初始化后 复制会是英文
          GlobalWidgetsLocalizations.delegate, // 初始化后 复制会是英文
          // 自己要补个文件 localizations.dart
          ChineseCupertinoLocalizations.delegate,
        ],
        routes: <String, WidgetBuilder>{
          '/home': (_) => MyHomePage(),
          '/weReadHome': (_) => WeReadHome(),
          '/netEaseHome': (_) => NetEaseHome(),
        },
        onUnknownRoute: (RouteSettings settings) => MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) => ErrorPage(),
        ),
        supportedLocales: [
          //此处
          const Locale('zh', 'CH'),
          const Locale('en', 'US'),
        ],
      ),
    );
  }
}
