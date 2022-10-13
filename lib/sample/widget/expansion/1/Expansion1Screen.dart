import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Item.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
