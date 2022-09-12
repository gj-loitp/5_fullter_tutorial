import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.roy93group.flutter_tutorial/lib/util/ui_utils.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "ThemeScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black87),
        child: Center(
          child: Container(
            // use the theme accent color as background color for this base.widget
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'Hello World!',
              // Set text style as per theme
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ),
      floatingActionButton: Theme(
        // override the accent color of theme for this base.widget only
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(secondary: Colors.pinkAccent),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
