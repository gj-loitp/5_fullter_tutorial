import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/uI_utils.dart';

import 'my_grid_view.dart';

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "GridScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: MyGridView().build(),
    );
  }
}
