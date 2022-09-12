import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';

import 'parent_page.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
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
