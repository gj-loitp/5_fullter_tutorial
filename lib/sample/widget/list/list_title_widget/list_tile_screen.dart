import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

class ListTileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ListTileScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ListTileWidget(),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('title text with dense'),
          dense: true,
        ),
        ListTile(
          title: Text('title'),
          leading: Text('leading'),
        ),
        ListTile(
          title: Text('title'),
          leading: Icon(Icons.access_alarm),
        ),
        ListTile(
          title: Text('title'),
          leading: Text('leading'),
          trailing: Text('trailing'),
        ),
        ListTile(
          title: Text('title'),
          leading: Icon(Icons.access_alarm),
          trailing: Icon(Icons.account_balance),
        ),
        ListTile(
          title: Text('title'),
          leading: Text('leading'),
          trailing: Text('trailing'),
          isThreeLine: true,
          subtitle: Text('subtitle'),
        ),
        ListTile(
          title: Text('title'),
          leading: Icon(Icons.access_alarm),
          trailing: Icon(Icons.account_balance),
          isThreeLine: true,
          subtitle: Text('subtitle'),
        ),
      ],
    );
  }
}
