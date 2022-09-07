import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/uI_utils.dart';

import 'utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class BottomSheetHomePage extends StatefulWidget {
  BottomSheetHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _BottomSheetHomePageState createState() => _BottomSheetHomePageState();
}

class _BottomSheetHomePageState extends State<BottomSheetHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        widget.title,
        () {
          Get.back();
        },
        null,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UIUtils.getButton("Bottom Sheet", () {
              _openBottomSheet(context);
            }),
          ],
        ),
      ),
    );
  }
}

void _openBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (builder) {
      return new Container(
        padding: EdgeInsets.all(5.0),
        child: new Wrap(
          children: <Widget>[
            getListTile(
              Icons.more,
              Colors.black45,
              "More",
              () {
                Get.back();
              },
            ),
            getListTile(
              Icons.favorite,
              Colors.pink,
              "Favourites",
              () {
                Get.back();
              },
            ),
            getListTile(
              Icons.account_box,
              Colors.blue,
              "Profile",
              () {
                Get.back();
              },
            ),
            new Divider(
              thickness: 2.0,
              height: 10.0,
            ),
            getListTile(
              Icons.exit_to_app,
              null,
              "Logout",
              () {
                Get.back();
              },
            ),
          ],
        ),
      );
    },
  );
}
