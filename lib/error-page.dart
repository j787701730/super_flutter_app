import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由找不到了'),
      ),
      body: Center(
        child: Text('路由找不到了'),
      ),
    );
  }
}
