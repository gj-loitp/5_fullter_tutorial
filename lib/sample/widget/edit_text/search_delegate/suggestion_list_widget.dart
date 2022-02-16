import 'package:flutter/material.dart';

class SuggestionListWidget extends StatelessWidget {
  const SuggestionListWidget({
    required this.listSuggestion,
    required this.query,
    required this.onSelected,
  });

  final List<String> listSuggestion;
  final String query;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listSuggestion.length,
      itemBuilder: (BuildContext context, int i) {
        final String suggestion = listSuggestion[i];
        return ListTile(
          leading: query.isEmpty ? Icon(Icons.history) : Icon(null),
          // Highlight the substring that matched the query.
          title: RichText(
            text: TextSpan(
              text: suggestion.substring(0, query.length),
              children: <TextSpan>[
                TextSpan(
                  text: suggestion.substring(query.length),
                ),
              ],
            ),
          ),
          onTap: () {
            onSelected(suggestion);
          },
        );
      },
    );
  }
}
