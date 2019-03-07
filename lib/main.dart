import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
            body: new Center(child: new RandomWords())));
  }
}

/* Stateless widgets 是不可变的意味着属性不能改变 所有值是不可变的
   Stateful widgets 持有的状态可能在widget生命周期中发生变化
*/
class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
