import 'package:com.roy93group.flutter_tutorial/lib/common/const/DimenConstants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/UIUtils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/database/sharedPreferences/SharedPreferencesScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sqlite/SqliteDemoScreen.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class MenuDatabaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuDatabaseScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          UIUtils.getButton(
            "SharedPreferencesScreen",
            () => {
              Get.to(() => SharedPreferencesScreen()),
            },
          ),
          UIUtils.getButton(
            "SQLiteDemoScreen",
            () => {
              Get.to(() => SQLiteDemoScreen()),
            },
          ),
        ],
      ),
    );
  }
}
