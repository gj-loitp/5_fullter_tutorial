import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'parent_page.dart';

//https://medium.com/flutter-community/flutter-communication-between-widgets-f5590230df1e
class CommunicationBetweenWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: UIUtils.getAppBar(
        "CommunicationBetweenWidgetScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ParentPage(),
    );
  }
}
