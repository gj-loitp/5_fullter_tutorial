import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:com.roy93group.flutter_tutorial/sample/database/shared_preferences/shared_preferences_screen.dart';

import 'sqlite/sqlite_demo_screen.dart';

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
              Get.to(SharedPreferencesScreen()),
            },
          ),
          UIUtils.getButton(
            "SQLiteDemoScreen",
            () => {
              Get.to(SQLiteDemoScreen()),
            },
          ),
        ],
      ),
    );
  }
}
