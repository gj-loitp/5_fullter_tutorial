import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

//https://blog.usejournal.com/flutter-search-in-listview-1ffa40956685
class ListViewSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ListViewSearchScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ListViewSearchWidget(title: "Suzuki"),
    );
  }
}

class ListViewSearchWidget extends StatefulWidget {
  ListViewSearchWidget({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;

  @override
  _ListViewSearchWidgetState createState() => new _ListViewSearchWidgetState();
}

class _ListViewSearchWidgetState extends State<ListViewSearchWidget> {
  TextEditingController _textEditingController = TextEditingController();

  final _listDuplicateItem = List<String>.generate(10000, (i) => "Item $i");
  var _listItem = [];

  @override
  void initState() {
    _listItem.addAll(_listDuplicateItem);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> listDummySearch = [];
    listDummySearch.addAll(_listDuplicateItem);

    if (query.isEmpty) {
      setState(() {
        _listItem.clear();
        _listItem.addAll(_listDuplicateItem);
      });
    } else {
      List<String> listDummyData = [];
      listDummySearch.forEach((item) {
        if (item.contains(query)) {
          listDummyData.add(item);
        }
      });
      setState(() {
        _listItem.clear();
        _listItem.addAll(listDummyData);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _listItem.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${_listItem[index]}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
