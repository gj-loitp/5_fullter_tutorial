import 'package:flutter/material.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'suggestion_list_widget.dart';

class MySearchDelegate extends SearchDelegate<String?> {
  final List<String> _listWord;
  final List<String> _listHistory;

  MySearchDelegate(List<String> words)
      : _listWord = words,
        _listHistory = <String>['apple', 'hello', 'world', 'flutter'],
        super();

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        this.close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            UIUtils.getText("You have selected the word:"),
            GestureDetector(
              onTap: () {
                // Returns this.query as result to previous screen, c.f.
                // showSearch() above.
                this.close(context, this.query);
              },
              child: Text(
                this.query,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<String> suggestions = this.query.isEmpty
        ? _listHistory
        : _listWord.where((word) => word.startsWith(query));

    return SuggestionListWidget(
      query: this.query,
      listSuggestion: suggestions.toList(),
      onSelected: (String suggestion) {
        this.query = suggestion;
        this._listHistory.insert(0, suggestion);
        showResults(context);
      },
    );
  }

  // Action buttons at the right of search bar.
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      query.isEmpty
          ? IconButton(
              tooltip: 'Voice Search',
              icon: const Icon(Icons.mic),
              onPressed: () {
                this.query = 'TODO: implement voice input';
              },
            )
          : IconButton(
              tooltip: 'Clear',
              icon: const Icon(Icons.clear),
              onPressed: () {
                query = '';
                showSuggestions(context);
              },
            )
    ];
  }
}
