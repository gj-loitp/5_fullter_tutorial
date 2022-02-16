import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'item.dart';

class Expansion1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "Expansion1Screen",
        () => Get.back(),
        null,
      ),
      body: ExpansionPanelWidget(),
    );
  }
}

class ExpansionPanelWidget extends StatefulWidget {
  @override
  _ExpansionPanelWidgetState createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  List<Item> _listItem = generateItems(3);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: buildPanel(),
        ),
      ],
    );
  }

  Widget buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _listItem[index].isExpanded = !isExpanded;
        });
      },
      children: _listItem.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue!),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue!),
              subtitle: Text('Click to delete'),
              trailing: Icon(Icons.delete),
              onTap: () => setState(() =>
                  _listItem.removeWhere((currentItem) => item == currentItem))),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
