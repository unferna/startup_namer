import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class SavedWordPairs extends StatelessWidget {
  final Set<WordPair> _saved;
  final _biggerFont = const TextStyle(fontSize: 18.0);
  SavedWordPairs(this._saved);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Suggestions"),
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    final Iterable<ListTile> tiles = _saved.map((WordPair pair) {
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    });

    final divided = ListTile.divideTiles(tiles: tiles, context: context).toList();
    return ListView(children: divided);
  }
}