import 'package:com.roy93group.flutter_tutorial/lib/core/base_stateful_state.dart';
import 'package:flutter/material.dart';

import 'MySearchDelegate.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class SearchDelegateScreen extends StatefulWidget {
  @override
  _SearchDelegateScreenState createState() => _SearchDelegateScreenState();
}

class _SearchDelegateScreenState
    extends BaseStatefulState<SearchDelegateScreen> {
  final List<String> _listWord;
  late MySearchDelegate _mySearchDelegate;

  _SearchDelegateScreenState()
      : _listWord = ['a', 'ab', 'abc', 'ac', 'ad', 'ae', 'af', 'ag', 'ah', 'aj']
          ..sort((w1, w2) => w1.toLowerCase().compareTo(w2.toLowerCase())),
        super();

  @override
  void initState() {
    super.initState();
    _mySearchDelegate = MySearchDelegate(_listWord);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('English Words'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Search',
            icon: const Icon(Icons.search),
            onPressed: () async {
              final String? selected = await showSearch<String?>(
                context: context,
                delegate: _mySearchDelegate,
              );
              if (selected != null) {
                showSnackBarFull(
                  'title',
                  'You have selected the word: $selected',
                );
              }
            },
          ),
        ],
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: _listWord.length,
          itemBuilder: (context, idx) => ListTile(
            title: Text(_listWord[idx]),
          ),
        ),
      ),
    );
  }
}
