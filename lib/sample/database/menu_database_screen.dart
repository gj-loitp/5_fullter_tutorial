import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/dimen_constants.dart';
import 'package:hello_word/lib/util/uI_utils.dart';
import 'package:hello_word/sample/database/shared_preferences/shared_preferences_screen.dart';

import 'sqlite/sqlite_demo_screen.dart';

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
