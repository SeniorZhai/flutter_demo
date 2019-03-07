import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// 创建并运行APP
void main() => runApp(new MyApp());

// 应用的本身就是一个widget 在flutter中大多数东西都是widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Welcome to Flutter', home: new RandomWords());
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
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return Divider();
          }
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(title: new Text(pair.asPascalCase, style: _biggerFont));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('Startup Name Generator')),
        body: _buildSuggestions());
  }
}
