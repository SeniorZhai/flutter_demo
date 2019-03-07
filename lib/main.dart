import 'package:flutter/material.dart';

// 创建并运行APP
void main() => runApp(new MyApp());

// 应用的本身就是一个widget 在flutter中大多数东西都是widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Welcome to Flutter',
        home: new Scaffold(
            // Scaffold 是 Material library 提供的一个widget 提供默认的导航栏、标题、包含主屏幕的widget树
            appBar: new AppBar(
              title: new Text('Welcome to Flutter'),
            ),
            body: new Center(child: new Text('Hello World'))));
  }
}
