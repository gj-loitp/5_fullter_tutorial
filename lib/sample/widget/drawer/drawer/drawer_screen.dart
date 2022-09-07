import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: Text('DrawerScreen'),
            ),
            body: Center(
              child: UIUtils.getText("DrawerScreen"),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Get.back();
              },
              child: Icon(Icons.exit_to_app),
            ),
            backgroundColor: Colors.cyan,
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: UIUtils.getText("flutter"),
                    accountEmail: UIUtils.getText("freuss47@gmail.com"),
                  ),
                  ListTile(
                    title: UIUtils.getText("Title1"),
                  ),
                  ListTile(
                    title: UIUtils.getText("Title2"),
                  ),
                  ListTile(
                    title: UIUtils.getText("Title3"),
                  ),
                  ListTile(
                    title: UIUtils.getText("Title4"),
                  ),
                  ListTile(
                    title: UIUtils.getText("Title5"),
                  ),
                  UIUtils.getButton(
                    "Click",
                    () => Get.back(),
                  ),
                  Image.network(Constants.dummyImageLink),
                  ListTile(
                    title: UIUtils.getText("Title6"),
                  ),
                  ListTile(
                    title: UIUtils.getText("Title7"),
                  ),
                  ListTile(
                    title: UIUtils.getText("Title8"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
