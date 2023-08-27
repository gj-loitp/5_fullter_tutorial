import 'package:com.roy93group.flutter_tutorial/lib/common/const/dimen_constants.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'hive/hive_screen.dart';
import 'shared_preferences/shared_preferences_screen.dart';
import 'sqflite/sqlite_demo_screen.dart';

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
        () => Get.back(),
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        children: [
          UIUtils.getButton(
            "Hive",
            () => Get.to(() => HiveScreen()),
            description:
                "Lightweight and blazing fast key-value database written in pure Dart. Strongly encrypted using AES-256.",
          ),
          UIUtils.getButton("SharedPreferencesScreen",
              () => Get.to(() => SharedPreferencesScreen()),
              description:
                  'Flutter plugin for reading and writing simple key-value pairs. Wraps NSUserDefaults on iOS and SharedPreferences on Android.'),
          UIUtils.getButton("sqflite", () => Get.to(() => SQLiteDemoScreen()),
              description:
                  'Flutter plugin for SQLite, a self-contained, high-reliability, embedded, SQL database engine.'),
        ],
      ),
    );
  }
}
